package com.rainboyan.groller.blog

import com.rainboyan.groller.util.DateUtils

class BlogController {
    def authenticateService

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [blogInstanceList: Blog.list(params), blogInstanceTotal: Blog.count()]
    }

    def create = {
        def blogInstance = new Blog()
        blogInstance.properties = params
        return [blogInstance: blogInstance]
    }

    def save = {
        def blogInstance = new Blog(params)
        blogInstance.enabled = true
        blogInstance.active = true
        blogInstance.user = User.findByUsername(authenticateService.principal().username)
        if (!blogInstance.hasErrors() && blogInstance.save()) {
            flash.message = "blog.created"
            flash.args = [blogInstance.id]
            flash.defaultMessage = "Blog ${blogInstance.id} created"
            
            redirect(controller: "admin")
        }
        else {
            render(view: "create", model: [blogInstance: blogInstance])
        }
    }

    def show = {
        def handle = params.blog
        if (handle) {
            def blog = Blog.findByHandle(handle)
            if (!blog) {
                flash.error = "blog.not.found"
                flash.args = [handle]
                flash.defaultError = "Blog not found with handle ${handle}"
                redirect(controller:"errors", action: "notfound")
				return
            }
            def entries = Entry.findAllByBlogAndStatus(blog, 'PUBLISHED', [max:10])
            return [blog: blog, day: new Date(), recentEntries: entries, map: entriesMap(entries)]
        }
    }

    def showByCategory = {
        def handle = params.blog
        def categoryName = params.category
        if (handle && categoryName) {
            def blog = Blog.findByHandle(handle)
            if (!blog) {
                flash.error = "blog.not.found"
                flash.args = [handle]
                flash.defaultError = "Blog not found with handle ${handle}"
                redirect(controller:"errors", action: "notfound")
				return
            }
            def recentEntries = Entry.findAllByBlogAndStatus(blog, 'PUBLISHED', [max:10])
            def category = Category.findByName(categoryName)
            if (!category) {
                flash.error = "category.not.found"
                flash.args = [categoryName]
                flash.defaultError = "Category not found with name ${categoryName}"
                redirect(controller:"errors", action: "notfound")
				return
            }
            def c = Entry.createCriteria()
            def entries = c.list {
                eq('blog', blog)
                eq('category', category)
                eq('status', 'PUBLISHED')
                maxResults(10)
                order("publishDate", "desc")
            }
            render view: "show", model: [blog: blog, day: new Date(), category: category, recentEntries: recentEntries, map: entriesMap(entries)]
        }
    }

    def showByUrl = {
        def handle = params.blog
        def url = params.url
        if (handle && url) {
            def blog = Blog.findByHandle(handle)
            if (!blog) {
                flash.error = "blog.not.found"
                flash.args = [handle]
                flash.defaultError = "Blog not found with handle ${handle}"
                redirect(controller:"errors", action: "notfound")
				return
            }
            def recentEntries = Entry.findAllByBlogAndStatus(blog, 'PUBLISHED', [max:10])
            def entry = Entry.findByUrl(url)
            def category = entry.category
            if (!entry) {
                flash.error = "entry.not.found"
                flash.args = [url]
                flash.defaultError = "Entry not found with url ${url}"
                redirect(controller:"errors", action: "notfound")
				return
            }
            def entries = [entry]
			println entries
            render view: "show", model: [blog: blog, day: new Date(), category: category, recentEntries: recentEntries, map: entriesMap(entries)]
        }
    }

    def showByDate = {
        def handle = params.blog
        def dateString = params.date
		def date = null
		
        if (handle && dateString) {
            def blog = Blog.findByHandle(handle)
            if (!blog) {
                flash.error = "blog.not.found"
                flash.args = [handle]
                flash.defaultError = "Blog not found with handle ${handle}"
                redirect(controller:"errors", action: "notfound")
				return
            }

            def c = Entry.createCriteria()
            def entries = null
			if (dateString ==~ /\d{6}/) {
				date = DateUtils.parse(dateString, DateUtils.get6charDateFormat())
				def startOfMonth = DateUtils.getStartOfMonth(date)
				def endOfMonth = DateUtils.getEndOfMonth(date)
				entries = c.list {
					eq('blog', blog)
					eq('status', 'PUBLISHED')
					between('publishDate', startOfMonth, endOfMonth)
					maxResults(10)
					order("publishDate", "desc")
				}
			}
			else if (dateString ==~ /\d{8}/) {
				date = DateUtils.parse(dateString, DateUtils.get8charDateFormat())
				def startOfDay = DateUtils.getStartOfDay(date)
				def endOfDay = DateUtils.getEndOfDay(date)
				entries = c.list {
					eq('blog', blog)
					eq('status', 'PUBLISHED')
					between('publishDate', startOfDay, endOfDay)
					maxResults(10)
					order("publishDate", "desc")
				}
			}
			else {
				entries = c.list {
					eq('blog', blog)
					eq('status', 'PUBLISHED')
					maxResults(10)
					order("publishDate", "desc")
				}
			}
            def recentEntries = Entry.findAllByBlogAndStatus(blog, 'PUBLISHED', [max:10])
            render view: "show", model: [blog: blog, day: date, recentEntries: recentEntries, map: entriesMap(entries)]
        }
    }

    def days(entries) {
        def days = new HashSet()
        entries.each { entry ->
            def dateString = entry.createDate.getDateString()

        }
    }

    private Map entriesMap(entries) {
        def entriesMap = [:]
        entries.each { entry ->
            def day = DateUtils.getStartOfDay(entry.publishDate)
            if (entriesMap.containsKey(day)) {
                def entriesOfDay = entriesMap.get(day)
                entriesOfDay << entry
            }
            else {
                def entryOfDay = []
                entryOfDay << entry
                entriesMap.put(day, entryOfDay)
            }
        }
        return entriesMap
    }

    def edit = {
        def handle = params.weblog
        if (handle) {
            def blog = Blog.findByHandle(handle)
            if (!blog) {
                flash.message = "blog.not.found"
                flash.args = [handle]
                flash.defaultMessage = "Blog not found with handle ${handle}"
                redirect(action: "admin")
            }
			return [blog: blog]
        }
    }

    def update = {
        def blogInstance = Blog.get(params.id)
        if (blogInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (blogInstance.version > version) {

                    blogInstance.errors.rejectValue("version", "blog.optimistic.locking.failure", "Another user has updated this Blog while you were editing")
                    render(view: "edit", model: [blog: blogInstance])
                    return
                }
            }
            blogInstance.properties = params
            if (!blogInstance.hasErrors() && blogInstance.save()) {
                flash.message = "blog.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Blog ${params.id} updated"
                redirect(controller: "admin")
            }
            else {
                render(view: "edit", model: [blog: blogInstance])
            }
        }
        else {
            flash.message = "blog.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Blog not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def blogInstance = Blog.get(params.id)
        if (blogInstance) {
            try {
                blogInstance.delete()
                flash.message = "blog.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Blog ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "blog.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Blog ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "blog.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Blog not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
