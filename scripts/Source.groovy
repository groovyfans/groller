/**
 * Gant script that packages a Grails application with source
 *
 * @author rain
 *
 * @since 0.1
 */

import org.codehaus.groovy.grails.compiler.support.*
import org.codehaus.groovy.grails.plugins.GrailsPluginUtils
import grails.util.BuildScope
import grails.util.Metadata
import grails.util.Environment
import org.codehaus.groovy.grails.plugins.GrailsPluginManager
import org.codehaus.groovy.grails.plugins.PluginInfo
import org.codehaus.groovy.grails.plugins.GrailsPlugin

includeTargets << grailsScript("_GrailsClean")
includeTargets << grailsScript("_GrailsPackage")

target ('default':'''Creates a ZIP archive for Grails source files.

Examples:
grails source
''') {
    depends( configureRunningScript, clean)

	source()
}

generateLog4jFile = true

srcName = null

target (source: "The implementation target") {
	depends( configureRunningScript, clean)

	try {
        configureSourceName()


        Ant.mkdir(dir:tempDir)

		Ant.copy(todir:tempDir, overwrite:true) {
			fileset(dir:"${basedir}") {
				include(name:"**/**")
				exclude(name:"temp*")
				exclude(name:"*.log")
			}
		}

    	event("SourceStart", [srcName])
		Ant.zip(destfile:srcName, basedir:tempDir)
    	event("SourceEnd", [srcName])
	}
	finally {
		cleanUpAfterSource()
	}
    event("StatusFinal", ["Done creating Source ${srcName}"])
}

target (configureRunningScript:"Sets the currently running script, in case called directly") {
    System.setProperty('current.gant.script',"source")
}

target(cleanUpAfterSource:"Cleans up after performing a Source") {
	Ant.delete(dir:"${tempDir}", failonerror:true)
}

target(configureSourceName: "Configuring Source name") {
    tempDir = "${basedir}/temp"

    if(config.grails.src.destFile || args) {
        // Pick up the name of the SOURCE to create from the command-line
        // argument or the 'grails.src.destFile' configuration option.
        // The command-line argument takes precedence.
        srcName = args ? args.trim() : config.grails.src.destFile
        // Find out whether SOURCE name is an absolute file path or a
        // relative one.
        def srcFile = new File(srcName)
        if(!srcFile.absolute) {
            // It's a relative path, so adjust it for 'basedir'.
            srcFile = new File(basedir, srcFile.path)
            srcName = srcFile.canonicalPath
        }

        String parentDir = srcFile.parentFile.absolutePath
        tempDir = "${parentDir}/temp"
    }
    else {
        def fileName = grailsAppName
        def version = metadata.getApplicationVersion()
        if(version) {
            version = '-'+version
        }
        else {
            version = ''
        }
        srcName = "${basedir}/${fileName}${version}-src.zip"
    }
}