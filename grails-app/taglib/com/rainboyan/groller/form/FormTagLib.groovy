package com.rainboyan.groller.form

import org.springframework.web.servlet.support.RequestContextUtils as RCU

import java.text.DateFormat

import com.rainboyan.groller.web.util.UIUtils

class FormTagLib {
    static namespace = 'gx'

    /**
     *  A helper tag for creating locale selects
     *
     * eg. <gx:localeSelect name="myLocale" value="${locale}" />
     */
    def localeSelect = {attrs ->
        attrs['from'] = UIUtils.getLocales()
        attrs['value'] = (attrs['value'] ? attrs['value'] : RCU.getLocale(request))
        // set the key as a closure that formats the locale
        attrs['optionKey'] = {"${it.language}_${it.country}"}
        // set the option value as a closure that formats the locale for display
        attrs['optionValue'] = {"${it.displayName}"}

        // use generic select
        out << g.select(attrs)
    }

    /**
     *  A helper tag for creating TimeZone selects
     * eg. <gx:timeZoneSelect name="myTimeZone" value="${tz}" />
     */
    def timeZoneSelect = {attrs ->
        attrs['from'] = UIUtils.getTimeZones()
        attrs['value'] = (attrs['value'] ? attrs['value'].ID : TimeZone.getDefault().ID)
        def date = new Date()

        // set the option value as a closure that formats the TimeZone for display
        attrs['optionValue'] = {

            return it
        }

        // use generic select
        out << g.select(attrs)
    }

}
