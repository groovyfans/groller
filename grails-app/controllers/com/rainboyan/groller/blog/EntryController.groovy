package com.rainboyan.groller.blog

import org.grails.plugins.springsecurity.service.AuthenticateService

class EntryController {
    def authenticateService

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        def blog = Blog.findByHandle(params.weblog)
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [blog: blog, entryInstanceList: Entry.findAllByBlog(blog, params), entryInstanceTotal: Entry.countByBlog(blog)]
    }

    def create = {
        def blog = Blog.findByHandle(params.weblog)
        def entryInstance = new Entry()
        entryInstance.properties = params
        entryInstance.blog = blog
        def categoryList = Category.findAllByBlog(blog)
        return [blog: blog, entryInstance: entryInstance, categoryList: categoryList]
    }

    def save = {
        def blog = Blog.findByHandle(params.weblog)
        def categoryList = Category.findAllByBlog(blog)
        def entryInstance = new Entry(params)
        entryInstance.blog = blog
        if (params.status == 'PUBLISHED'){
            entryInstance.publishDate = new Date()
        }
        
        entryInstance.user = User.findByUsername(authenticateService.principal().username)
        if (!entryInstance.hasErrors() && entryInstance.save()) {
            flash.message = "entry.created"
            flash.args = [entryInstance.id]
            flash.defaultMessage = "Entry ${entryInstance.id} created"
            redirect(action: "list", params: [weblog: blog.handle])
        }
        else {
            render(view: "create", model: [blog: blog, entryInstance: entryInstance, categoryList: categoryList])
        }
    }

    def show = {
        def entryInstance = Entry.get(params.id)
        if (!entryInstance) {
            flash.message = "entry.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Entry not found with id ${params.id}"
            redirect(action: "list", params: [weblog: blog.handle])
        }
        else {
            return [entryInstance: entryInstance]
        }
    }

    def edit = {
        def blog = Blog.findByHandle(params.weblog)
        def categoryList = Category.findAllByBlog(blog)
        def entryInstance = Entry.get(params.id)
        if (!entryInstance) {
            flash.message = "entry.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Entry not found with id ${params.id}"
            redirect(action: "list", params: [weblog: blog.handle])
        }
        else {
            return [blog: blog, entryInstance: entryInstance, categoryList: categoryList]
        }
    }

    def update = {
        def blog = Blog.findByHandle(params.weblog)
        def categoryList = Category.findAllByBlog(blog)
        def entryInstance = Entry.get(params.id)
        if (entryInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (entryInstance.version > version) {
                    
                    entryInstance.errors.rejectValue("version", "entry.optimistic.locking.failure", "Another user has updated this Entry while you were editing")
                    render(view: "edit", model: [blog: blog, entryInstance: entryInstance, categoryList: categoryList])
                    return
                }
            }
            entryInstance.properties = params
            if (!entryInstance.hasErrors() && entryInstance.save()) {
                flash.message = "entry.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Entry ${params.id} updated"
                redirect(action: "list", params: [weblog: blog.handle])
            }
            else {
                render(view: "edit", model: [blog: blog, entryInstance: entryInstance, categoryList: categoryList])
            }
        }
        else {
            flash.message = "entry.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Entry not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def blog = Blog.findByHandle(params.weblog)
        def entryInstance = Entry.get(params.id)
        if (entryInstance) {
            try {
                entryInstance.delete()
                flash.message = "entry.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Entry ${params.id} deleted"
                redirect(action: "list", params: [weblog: blog.handle])
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "entry.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Entry ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "entry.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Entry not found with id ${params.id}"
            redirect(action: "list", params: [weblog: blog.handle])
        }
    }
}
