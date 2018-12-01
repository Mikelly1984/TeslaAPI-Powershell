$Headers =  @{
            "Authorization" = "Bearer API_KEY_GOES_HERE"
            "Accept-Encoding" = "gzip,deflate"
        }

Invoke-RestMethod -Uri "https://owner-api.teslamotors.com/api/1/vehicles/$(VEHICLE_ID_GOES_HERE)/wake_up" -Method Post -Headers $Headers -ContentType 'application/json'| Select-Object -ExpandProperty Response

Start-Sleep 15

Invoke-RestMethod -Uri "https://owner-api.teslamotors.com/api/1/vehicles/$(VEHICLE_ID_GOES_HERE)/command/auto_conditioning_start" -Method Post -Headers $Headers -ContentType 'application/json'


