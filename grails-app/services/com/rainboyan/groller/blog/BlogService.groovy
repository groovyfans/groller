package com.rainboyan.groller.blog

class BlogService {

    boolean transactional = true

    def getWeblogEntries(
            Blog blog, 
            User user,
            Date        startDate,
            Date        endDate,
            String      categoryName,
            List        tags,
            String      status,
            String      sortBy, 
            String      sortOrder,            
            int         offset,
            int         max) {
        def c = Entry.createCriteria()
        def query = {
            eq('blog', blog)
            if (user) {
                eq('user', user)
            }
            if (categoryName){
                eq('category.name', categoryName)
            }
            if (status) {
                eq('status', status)
            }
            if (startDate && endDate) {
                between('publishDate', startDate, endDate)
            }
            else if (startDate) {
                GreaterThan('publishDate', startDate)
            }
            else if (endDate) {
                LessThan('publishDate', endDate)
            }
            if (offset) {
                firstResult(offset)
            }
            if (max) {
                maxResults(max)
            }
	        if (sortBy && sortOrder) {
                order(sortBy, sortOrder)
            }
        }
        def results = c.list(query)
        return results
    }
}
