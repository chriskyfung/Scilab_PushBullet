function  output = pushNoteViaCurl(ApiKey, device_iden, notetitle, notebody)
//            % Push a note by calling curl in system
//            % https://docs.pushbullet.com/v2/pushes
//            % Arguments:
//            % device_iden -- iden of device to push to
//            % notetitle -- a title for the note
//            % notebody -- the body of the note
cmd = msprintf('curl -u %s: https://api.pushbullet.com/v2/pushes -d type=note -d device_iden=%s -d title=''%s'' -d body=''%s''', ApiKey, device_iden, notetitle, notebody')
[output,status] = unix_g(cmd);

endfunction
