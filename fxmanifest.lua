fx_version 'cerulean'
game 'common'

name 'mysql-async'
description 'Database wrapper for FXServer utilising node-mysql2 offering improved performance and security.'
version '2.6.0'
url 'https://github.com/Mycroft-Studios/fivem-mysql-async'
author 'Mycroft and other people'

dependencies {
	'/server:5104',
}

client_script 'ui.lua'
server_script 'dist/build.js'

files {
	'web/build/index.html',
	'web/build/**/*'
}

ui_page 'web/build/index.html'

provide 'oxmysql'
provide 'ghmattimysql'

convar_category 'mysql-async' {
	'Configuration',
	{
		{ 'Connection string', 'mysql_connection_string', 'CV_STRING', 'mysql://user:password@localhost/database' },
		{ 'Debug', 'mysql_debug', 'CV_BOOL', 'false' }
	}
}
