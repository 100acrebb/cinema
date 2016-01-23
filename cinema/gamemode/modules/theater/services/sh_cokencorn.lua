local SERVICE = {}

SERVICE.Name 	= "CokeNCorn"
SERVICE.IsTimed = true


SERVICE.ValidExtensions = { '', 'html', 'htm', 'xhtml', 'dhtml', 'php', 'asp', 'aspx' }

function SERVICE:Match( url )
	print ("testing", string.match(url.host, "cokencorn.com") and string.match(url.path, "^/video/(.+)"))
	return string.match(url.host, "cokencorn.com") and string.match(url.path, "^/video/(.+)")
end

function SERVICE:GetURLInfoX( url )

	local info = {}
	info.Data = string.match(url.path, "/video/(.+)")    -- video/49GY9KKMR3R1/The-Martian
	print (info.Data)
	return info

end

function SERVICE:GetURLInfo( url )
	print("GetURLInfo", url)
	local info = {}
	info.Data = url.encoded

	return info

end

function SERVICE:GetVideoInfo( data, onSuccess, onFailure )

	print("GetVideoInfo", data, onSuccess)
	local info = {}
	info.data = data
	info.duration = 600

	local onReceive = function( body, length, headers, code )
		print ("onReceive")
		info.title = string.match( body, "<title>(.*)</title>" ) or "(Unknown)"
		PrintTable(info)
		
		if onSuccess then
			print ("calling onSuccess")
			pcall(onSuccess, info)
		end

	end

	-- Parse url
	--local status, url = pcall( url.parse2, data )
	--print (status, url, url.path)
	--local url = string.format( "http://vimeo.com/api/v2/video/%s.json", data )
	print ("calling Fetch")
	self:Fetch( data, onReceive, onFailure )
	

end


theater.RegisterService( 'cokencorn', SERVICE )





