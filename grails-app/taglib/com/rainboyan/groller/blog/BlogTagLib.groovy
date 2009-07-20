package com.rainboyan.groller.blog

import java.text.*

import com.rainboyan.groller.blog.*
import com.rainboyan.groller.util.DateUtils

class BlogTagLib {
    static namespace = 'blog'

	def authenticateService
	
    def showBlog = { attrs, body ->
        def blog = attrs['blog']
		def theme = blog?.editorTheme ?: 'basic'
		out << applyLayout(name:'main', template:"/themes/${theme}/blog")
    }

    def displayCategories = { attrs, body ->
        def blog = attrs['blog']
        def currentCategory = attrs['category']

        out << "<ul class=\"rCategory\">"
        if (currentCategory) { 
			out << "<li>" 
		}
		else {
			out << "<li class=\"selected\">"
		}
		out << "<a href=\"${request.contextPath}/${blog.handle}\">"
        out << g.message(code:'category.all', default:'All')
        out << "</a></li>"
        
        def categories = Category.findAllByBlog(blog)
        categories.each { category ->
            if (category == currentCategory) out << "<li class=\"selected\">"
			else out << "<li>"
			out << "<a href=\"${createLink(controller:'blog',action:'showByCategory',params:[blog:blog.handle,category:category.name])}\">"
			out << category?.name
			out << "</a>"
			out << "</li>"
        }
        out << "</ul>"
    }

	def isEditor = { attrs, body ->
		def blog = attrs['blog']
		def editor = blog?.user?.username
		def currentUser = null
		if (authenticateService.isLoggedIn()) {
			currentUser = authenticateService.principal().username
		}
		
		if (editor == currentUser) {
			out << body()
		}
	}
	
    def showSmallCalendar = { attrs, body ->
		def model = attrs['model']
		def blog = model.blog
		def day = model.day
		
        def todayCal = Calendar.getInstance()
        todayCal.setTime( new Date() )
		
        def cal = Calendar.getInstance()
		cal.setTime(day)
        cal.set( Calendar.DAY_OF_MONTH, cal.getMinimum(Calendar.DAY_OF_MONTH) )
        while ( cal.get( Calendar.DAY_OF_WEEK ) != cal.getFirstDayOfWeek() ) {
            cal.add( Calendar.DATE, -1 );
        }
		def prevMonthString = getPrevMonthString(day)
		def nextMonthString = getNextMonthString(day)

        def dayCal = Calendar.getInstance()
        dayCal.setTime( day )

        String[] mDayNames = buildDayNames()
        SimpleDateFormat formatTitle = new SimpleDateFormat("MMMM yyyy", Locale.getDefault())
        out << "<table cellspacing=\"0\" border=\"0\" summary=\"\" class=\"hCalendarTable\">"
        out << "<tr>"
        out << "<td colspan=\"7\" align=\"center\" class=\"hCalendarMonthYearRow\">"
        out << "<a href=\"${createLink(controller:'blog',action:'showByDate',params:[blog:blog.handle,date:prevMonthString])}\" title=\"\" class=\"hCalendarNavBar\">&laquo;</a> "
        out << formatTitle.format(day)
		if (DateUtils.getStartOfMonth(day) < DateUtils.getStartOfMonth(new Date()))
			out << "<a href=\"${createLink(controller:'blog',action:'showByDate',params:[blog:blog.handle,date:nextMonthString])}\" title=\"\" class=\"hCalendarNavBar\">&raquo;</a> "
        out << "</td></tr>"
        // emit the HTML calendar
        for ( int w=-1; w<6; w++ ) {
            out << "<tr>"
            for ( int d=0; d<7; d++ ) {
                if ( w == -1 ) {
                    out << "<th class=\"hCalendarDayNameRow\" align=\"center\">"
                    out << mDayNames[d]
                    out <<"</th>"
                    continue
                }
                // day is in calendar month
                if ((cal.get(Calendar.MONTH) == dayCal.get(Calendar.MONTH)) 
                    && (cal.get(Calendar.YEAR) == dayCal.get(Calendar.YEAR))) {
                    // day is today then use today style
                    if ((cal.get(Calendar.DAY_OF_MONTH) == todayCal.get(Calendar.DAY_OF_MONTH))
                            && (cal.get(Calendar.MONTH) == todayCal.get(Calendar.MONTH))
                            && (cal.get(Calendar.YEAR) == todayCal.get(Calendar.YEAR))) {
                        printToday(cal)
                    } else {
                        printDayInThisMonth(cal)
                    }
                } 
                else // apply day-not-in-month style ;-)
                {
                    printDayNotInMonth(cal)
                }
                
                // increment calendar by one day
                cal.add( Calendar.DATE, 1 )
            }
            out << "</tr>"
        }
		out << "<tr class=\"hCalendarNextPrev\">"
		out << "<td colspan=\"7\" align=\"center\">"
		out << "<a href=\"${createLink(controller:'blog',action:'show',params:[blog:blog.handle])}\" class=\"hCalendarNavBar\">" + "Today" + "</a>"
		out << "</td>"
		out << "</tr>"
        out << "</table>"
    }

    private void printToday(Calendar cal) {
        out << "<td class=\"hCalendarDayCurrent\">"
        out << "<div class=\"hCalendarDayTitle\">"
        out << cal.get(Calendar.DAY_OF_MONTH)
        out << "</div></td>"
    }

    private void printDayNotInMonth(Calendar cal) {
        out << "<td class=\"hCalendarDayNotInMonth\">"
        //pw.print(cal.get(Calendar.DAY_OF_MONTH));
        out << "&nbsp;"
        out << "</td>"
    }

    private void printDayInThisMonth(Calendar cal) {
        out << "<td class=\"hCalendarDay\">"
        out << "<div class=\"hCalendarDayTitle\">"
        out << cal.get(Calendar.DAY_OF_MONTH)
        out << "</div>"
        out << "</td>"
    }

    private String[] buildDayNames() {
        // build array of names of days of week
        String[] mDayNames = new String[7]
        Calendar dayNameCal = Calendar.getInstance(Locale.getDefault())
        SimpleDateFormat dayFormatter = new SimpleDateFormat("EEE", Locale.getDefault())
        dayNameCal.set(Calendar.DAY_OF_WEEK, dayNameCal.getFirstDayOfWeek())
        for (int dnum = 0; dnum < 7; dnum++) {
            mDayNames[dnum] = dayFormatter.format(dayNameCal.getTime())
            dayNameCal.add(Calendar.DATE, 1)
        }
        return mDayNames
    }
	
	private String getPrevMonthString(day) {
		def cal = Calendar.getInstance()
        cal.setTime(day)

        // set time to end of day
        cal.set(Calendar.HOUR_OF_DAY, cal.getMaximum(Calendar.HOUR_OF_DAY));
        cal.set(Calendar.MINUTE,      cal.getMaximum(Calendar.MINUTE));
        cal.set(Calendar.SECOND,      cal.getMaximum(Calendar.SECOND));
        cal.set(Calendar.MILLISECOND, cal.getMaximum(Calendar.MILLISECOND));

        // set time to first day of month
        cal.set(Calendar.DAY_OF_MONTH, 1);

        // add one month
        cal.add(Calendar.MONTH, -1);
		
		def prevMonth = cal.getTime()
		
		def prevMonthString = DateUtils.format6chars(prevMonth)
		return prevMonthString
	}
	
	private String getNextMonthString(day) {
		def cal = Calendar.getInstance()
        cal.setTime(day);

        // set time to end of day
        cal.set(Calendar.HOUR_OF_DAY, cal.getMaximum(Calendar.HOUR_OF_DAY));
        cal.set(Calendar.MINUTE,      cal.getMaximum(Calendar.MINUTE));
        cal.set(Calendar.SECOND,      cal.getMaximum(Calendar.SECOND));
        cal.set(Calendar.MILLISECOND, cal.getMaximum(Calendar.MILLISECOND));

        // set time to first day of month
        cal.set(Calendar.DAY_OF_MONTH, 1);

        // add one month
        cal.add(Calendar.MONTH, 1);
		
		def nextMonth = cal.getTime()
		
		def nextMonthString = DateUtils.format6chars(nextMonth)
		return nextMonthString
	}
}
