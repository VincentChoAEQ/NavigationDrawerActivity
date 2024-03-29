<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application
        android:name=".${applicationClass}"
    >
    <#if isSplash>
        <activity
            android:name=".SplashActivity"
            android:label="SplashActivity"
            android:theme="@style/AppTheme.NoActionBar">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </#if>
        <activity
            android:name="${packageName}.${activityClass}"
            android:label="@string/app_name"
            android:theme="@style/AppTheme.NoActionBar">
        <#if isSplash>
        <#else>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </#if>

        </activity>
    </application>

</manifest>
