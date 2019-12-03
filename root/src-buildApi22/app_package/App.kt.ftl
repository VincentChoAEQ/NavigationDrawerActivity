package ${escapeKotlinIdentifiers(packageName)}

import android.app.Application

<#if isKoin>
import org.koin.android.ext.koin.androidContext
import org.koin.android.ext.koin.androidLogger
import org.koin.core.context.startKoin
import org.koin.dsl.module
</#if>

class ${applicationClass} : Application() {
<#if isKoin>
	val appModule = module {}
</#if>
    override fun onCreate() {
        super.onCreate()
<#if isKoin>
        startKoin{
            androidLogger()
            androidContext(this@${applicationClass})
            modules(appModule)
        }
</#if>
    }
}
