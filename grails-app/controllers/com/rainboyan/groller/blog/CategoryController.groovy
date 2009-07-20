package com.rainboyan.groller.blog

class CategoryController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        def blog = Blog.findByHandle(params.weblog)
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [blog: blog, categoryInstanceList: Category.findAllByBlog(blog, params), categoryInstanceTotal: Category.count()]
    }

    def create = {
        def blog = Blog.findByHandle(params.weblog)
        def categoryInstance = new Category()
        categoryInstance.properties = params
        return [blog: blog, categoryInstance: categoryInstance]
    }

    def save = {
        def blog = Blog.findByHandle(params.weblog)
        def categoryInstance = new Category(params)
        categoryInstance.blog = blog
        if (!categoryInstance.hasErrors() && categoryInstance.save()) {
            flash.message = "category.created"
            flash.args = [categoryInstance.id]
            flash.defaultMessage = "Category ${categoryInstance.id} created"
            redirect(action: "list", params: [weblog: blog.handle])
        }
        else {
            render(view: "create", model: [blog: blog, categoryInstance: categoryInstance])
        }
    }

    def show = {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = "category.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Category not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [categoryInstance: categoryInstance]
        }
    }

    def edit = {
        def categoryInstance = Category.get(params.id)
        if (!categoryInstance) {
            flash.message = "category.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Category not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [categoryInstance: categoryInstance]
        }
    }

    def update = {
        def categoryInstance = Category.get(params.id)
        if (categoryInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (categoryInstance.version > version) {
                    
                    categoryInstance.errors.rejectValue("version", "category.optimistic.locking.failure", "Another user has updated this Category while you were editing")
                    render(view: "edit", model: [categoryInstance: categoryInstance])
                    return
                }
            }
            categoryInstance.properties = params
            if (!categoryInstance.hasErrors() && categoryInstance.save()) {
                flash.message = "category.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Category ${params.id} updated"
                redirect(action: "show", id: categoryInstance.id)
            }
            else {
                render(view: "edit", model: [categoryInstance: categoryInstance])
            }
        }
        else {
            flash.message = "category.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Category not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def categoryInstance = Category.get(params.id)
        if (categoryInstance) {
            try {
                categoryInstance.delete()
                flash.message = "category.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Category ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "category.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Category ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "category.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Category not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
