--[[
--]]
URL =require("./libs/url")
JSON=require("./libs/dkjson")
serpent=require("libs/serpent")
json=require('libs/json')
Redis=require('libs/redis').connect('127.0.0.1',6379)
http=require("socket.http")
https=require("ssl.https")
localMethods=io.open("./luatele.lua","r")
ifMethodsthen
URL.tdlua_CallBack()
end
SshId=io.popen("echo$SSH_CLIENT︙awk'{print$1}'"):read('*a')
luatele=require'luatele'
localFileInformation=io.open("./Information.lua","r")
ifnotFileInformationthen
ifnotRedis:get(SshId.."Info:Redis:Token")then
io.write('\27[1;31mارسلليتوكنالبوتالان\nSendMeaBotTokenNow↡\n\27[0;39;49m')
localTokenBot=io.read()
ifTokenBotandTokenBot:match('(%d+):(.*)')then
localurl,res=https.request('https://api.telegram.org/bot'..TokenBot..'/getMe')
localJson_Info=JSON.decode(url)
ifres~=200then
print('\27[1;34mعذراتوكنالبوتخطأتحققمنهوارسلهمرهاخره\nBotTokenisWrong\n')
else
io.write('\27[1;34mتمحفظالتوكنبنجاح\nThetokenbeensavedsuccessfully\n\27[0;39;49m')
TheTokenBot=TokenBot:match("(%d+)")
os.execute('sudorm-fr.CallBack-Bot/'..TheTokenBot)
Redis:set(SshId.."Info:Redis:Token",TokenBot)
Redis:set(SshId.."Info:Redis:Token:User",Json_Info.result.username)
end
else
print('\27[1;34mلميتمحفظالتوكنجربمرهاخره\nTokennotsaved,tryagain')
end
os.execute('luaBLANK.lua')
end
ifnotRedis:get(SshId.."Info:Redis:User")then
io.write('\27[1;31mارسلمعرفالمطورالاساسيالان\nDeveloperUserNamesaved↡\n\27[0;39;49m')
localUserSudo=io.read():gsub('@','')
ifUserSudo~=''then
io.write('\n\27[1;34mتمحفظمعرفالمطور\nDeveloperUserNamesaved\n\n\27[0;39;49m')
Redis:set(SshId.."Info:Redis:User",UserSudo)
else
print('\n\27[1;34mلميتمحفظمعرفالمطورالاساسي\nDeveloperUserNamenotsaved\n')
end
os.execute('luaBLANK.lua')
end
ifnotRedis:get(SshId.."Info:Redis:User:ID")then
io.write('\27[1;31mارسلايديالمطورالاساسيالان\nDeveloperIDsaved↡\n\27[0;39;49m')
localUserId=io.read()
ifUserIdandUserId:match('(%d+)')then
io.write('\n\27[1;34mتمحفظايديالمطور\nDeveloperIDsaved\n\n\27[0;39;49m')
Redis:set(SshId.."Info:Redis:User:ID",UserId)
else
print('\n\27[1;34mلميتمحفظايديالمطورالاساسي\nDeveloperIDnotsaved\n')
end
os.execute('luaBLANK.lua')
end
localInformationlua=io.open("Information.lua",'w')
Informationlua:write([[
return{
Token="]]..Redis:get(SshId.."Info:Redis:Token")..[[",
UserBot="]]..Redis:get(SshId.."Info:Redis:Token:User")..[[",
UserSudo="]]..Redis:get(SshId.."Info:Redis:User")..[[",
SudoId=]]..Redis:get(SshId.."Info:Redis:User:ID")..[[
}
]])
Informationlua:close()
localBLANK=io.open("BLANK",'w')
BLANK:write([[
cd$(cd$(dirname$0);pwd)
while(true)do
sudolua5.3BLANK.lua
done
]])
BLANK:close()
localRun=io.open("Run",'w')
Run:write([[
cd$(cd$(dirname$0);pwd)
while(true)do
screen-SBLANK-Xkill
screen-SBLANK./BLANK
done
]])
Run:close()
Redis:del(SshId.."Info:Redis:User:ID");Redis:del(SshId.."Info:Redis:User");Redis:del(SshId.."Info:Redis:Token:User");Redis:del(SshId.."Info:Redis:Token")
os.execute('chmod+xBLANK;chmod+xRun;./Run')
end
Information=dofile('./Information.lua')
Sudo_Id=Information.SudoId
UserSudo=Information.UserSudo
Token=Information.Token
UserBot=Information.UserBot
BLANK=Token:match("(%d+)")
os.execute('sudorm-fr.CallBack-Bot/'..BLANK)
LuaTele=luatele.set_config{api_id=4139599,api_hash='c4e7d051da03aa0f774b686ea3b993b2',session_name=BLANK,token=Token}
functionvar(value)
print(serpent.block(value,{comment=false}))
end
functionchat_type(ChatId)
ifChatIdthen
localid=tostring(ChatId)
ifid:match("-100(%d+)")then
Chat_Type='GroupBot'
elseifid:match("^(%d+)")then
Chat_Type='UserBot'
else
Chat_Type='GroupBot'
end
end
returnChat_Type
end
functionThe_ControllerAll(UserId)
ControllerAll=false
localListSudos={Sudo_Id,1498753532}
fork,vinpairs(ListSudos)do
iftonumber(UserId)==tonumber(v)then
ControllerAll=true
end
end
returnControllerAll
end
functionControllerbanall(ChatId,UserId)
Status=0
DevelopersQ=Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId)
ifUserId==1498753532then
Status=true
elseifUserId==2123332060then
Status=true
elseifUserId==Sudo_Idthen
Status=true
elseifUserId==BLANKthen
Status=true
elseifDevelopersQthen
Status=true
else
Status=false
end
returnStatus
end
functionController(ChatId,UserId)
Status=0
Developers=Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId)
DevelopersQ=Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId)
TheBasics=Redis:sismember(BLANK.."BLANK:TheBasics:Group"..ChatId,UserId)
Originators=Redis:sismember(BLANK.."BLANK:Originators:Group"..ChatId,UserId)
Managers=Redis:sismember(BLANK.."BLANK:Managers:Group"..ChatId,UserId)
Addictive=Redis:sismember(BLANK.."BLANK:Addictive:Group"..ChatId,UserId)
Distinguished=Redis:sismember(BLANK.."BLANK:Distinguished:Group"..ChatId,UserId)
StatusMember=LuaTele.getChatMember(ChatId,UserId).status.luatele
ifUserId==1498753532then
Status='مطورالسورس'
elseifUserId==Sudo_Idthen
Status='المطورالاساسي'
elseifUserId==BLANKthen
Status='البوت'
elseifDevelopersQthen
Status='المطورالثانوي'
elseifDevelopersthen
Status=Redis:get(BLANK.."BLANK:Developer:Bot:Reply"..ChatId)or'المطور'
elseifTheBasicsthen
Status=Redis:get(BLANK.."BLANK:President:Group:Reply"..ChatId)or'المنشئالاساسي'
elseifOriginatorsthen
Status=Redis:get(BLANK.."BLANK:Constructor:Group:Reply"..ChatId)or'المنشئ'
elseifManagersthen
Status=Redis:get(BLANK.."BLANK:Manager:Group:Reply"..ChatId)or'المدير'
elseifAddictivethen
Status=Redis:get(BLANK.."BLANK:Admin:Group:Reply"..ChatId)or'الادمن'
elseifStatusMember=="chatMemberStatusCreator"then
Status='مالكالمجموعه'
elseifStatusMember=="chatMemberStatusAdministrator"then
Status='ادمنالمجموعه'
elseifDistinguishedthen
Status=Redis:get(BLANK.."BLANK:Vip:Group:Reply"..ChatId)or'المميز'
else
Status=Redis:get(BLANK.."BLANK:Mempar:Group:Reply"..ChatId)or'العضو'
end
returnStatus
end
functionController_Num(Num)
Status=0
iftonumber(Num)==1then
Status='المطورالاساسي'
elseiftonumber(Num)==2then
Status='المطورالثانوي'
elseiftonumber(Num)==3then
Status='المطور'
elseiftonumber(Num)==4then
Status='المنشئالاساسي'
elseiftonumber(Num)==5then
Status='المنشئ'
elseiftonumber(Num)==6then
Status='المدير'
elseiftonumber(Num)==7then
Status='الادمن'
else
Status='المميز'
end
returnStatus
end
functionGetAdminsSlahe(ChatId,UserId,user2,MsgId,t1,t2,t3,t4,t5,t6)
localGetMemberStatus=LuaTele.getChatMember(ChatId,user2).status
ifGetMemberStatus.can_change_infothen
change_info='❬✔️❭'elsechange_info='❬❌❭'
end
ifGetMemberStatus.can_delete_messagesthen
delete_messages='❬✔️❭'elsedelete_messages='❬❌❭'
end
ifGetMemberStatus.can_invite_usersthen
invite_users='❬✔️❭'elseinvite_users='❬❌❭'
end
ifGetMemberStatus.can_pin_messagesthen
pin_messages='❬✔️❭'elsepin_messages='❬❌❭'
end
ifGetMemberStatus.can_restrict_membersthen
restrict_members='❬✔️❭'elserestrict_members='❬❌❭'
end
ifGetMemberStatus.can_promote_membersthen
promote='❬✔️❭'elsepromote='❬❌❭'
end
localreply_markupp=LuaTele.replyMarkup{
type='inline',
data={
{
{text='-تغييرمعلوماتالمجموعه:'..(t1orchange_info),data=UserId..'/groupNum1//'..user2},
},
{
{text='-تثبيتالرسائل:'..(t2orpin_messages),data=UserId..'/groupNum2//'..user2},
},
{
{text='-حظرالمستخدمين:'..(t3orrestrict_members),data=UserId..'/groupNum3//'..user2},
},
{
{text='-دعوةالمستخدمين:'..(t4orinvite_users),data=UserId..'/groupNum4//'..user2},
},
{
{text='-حذفالرسائل:'..(t5ordelete_messages),data=UserId..'/groupNum5//'..user2},
},
{
{text='-اضافةمشرفين:'..(t6orpromote),data=UserId..'/groupNum6//'..user2},
},
}
}
LuaTele.editMessageText(ChatId,MsgId,"☆︙صلاحياتالادمن-",'md',false,false,reply_markupp)
end
functionGetAdminsNum(ChatId,UserId)
localGetMemberStatus=LuaTele.getChatMember(ChatId,UserId).status
ifGetMemberStatus.can_change_infothen
change_info=1elsechange_info=0
end
ifGetMemberStatus.can_delete_messagesthen
delete_messages=1elsedelete_messages=0
end
ifGetMemberStatus.can_invite_usersthen
invite_users=1elseinvite_users=0
end
ifGetMemberStatus.can_pin_messagesthen
pin_messages=1elsepin_messages=0
end
ifGetMemberStatus.can_restrict_membersthen
restrict_members=1elserestrict_members=0
end
ifGetMemberStatus.can_promote_membersthen
promote=1elsepromote=0
end
return{
promote=promote,
restrict_members=restrict_members,
invite_users=invite_users,
pin_messages=pin_messages,
delete_messages=delete_messages,
change_info=change_info
}
end
functionGetSetieng(ChatId)
ifRedis:get(BLANK.."BLANK:lockpin"..ChatId)then
lock_pin="✔️"
else
lock_pin="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:tagservr"..ChatId)then
lock_tagservr="✔️"
else
lock_tagservr="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:text"..ChatId)then
lock_text="✔️"
else
lock_text="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:AddMempar"..ChatId)=="kick"then
lock_add="✔️"
else
lock_add="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Join"..ChatId)=="kick"then
lock_join="✔️"
else
lock_join="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:edit"..ChatId)then
lock_edit="✔️"
else
lock_edit="❌"
end
ifRedis:get(BLANK.."BLANK:Chek:Welcome"..ChatId)then
welcome="✔️"
else
welcome="❌"
end
ifRedis:hget(BLANK.."BLANK:Spam:Group:User"..ChatId,"Spam:User")=="kick"then
flood="بالطرد"
elseifRedis:hget(BLANK.."BLANK:Spam:Group:User"..ChatId,"Spam:User")=="keed"then
flood="بالتقيد"
elseifRedis:hget(BLANK.."BLANK:Spam:Group:User"..ChatId,"Spam:User")=="mute"then
flood="بالكتم"
elseifRedis:hget(BLANK.."BLANK:Spam:Group:User"..ChatId,"Spam:User")=="del"then
flood="✔️"
else
flood="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Photo"..ChatId)=="del"then
lock_photo="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Photo"..ChatId)=="ked"then
lock_photo="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Photo"..ChatId)=="ktm"then
lock_photo="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Photo"..ChatId)=="kick"then
lock_photo="بالطرد"
else
lock_photo="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Contact"..ChatId)=="del"then
lock_phon="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Contact"..ChatId)=="ked"then
lock_phon="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Contact"..ChatId)=="ktm"then
lock_phon="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Contact"..ChatId)=="kick"then
lock_phon="بالطرد"
else
lock_phon="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Link"..ChatId)=="del"then
lock_links="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Link"..ChatId)=="ked"then
lock_links="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Link"..ChatId)=="ktm"then
lock_links="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Link"..ChatId)=="kick"then
lock_links="بالطرد"
else
lock_links="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Cmd"..ChatId)=="del"then
lock_cmds="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Cmd"..ChatId)=="ked"then
lock_cmds="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Cmd"..ChatId)=="ktm"then
lock_cmds="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Cmd"..ChatId)=="kick"then
lock_cmds="بالطرد"
else
lock_cmds="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:User:Name"..ChatId)=="del"then
lock_user="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:User:Name"..ChatId)=="ked"then
lock_user="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:User:Name"..ChatId)=="ktm"then
lock_user="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:User:Name"..ChatId)=="kick"then
lock_user="بالطرد"
else
lock_user="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:hashtak"..ChatId)=="del"then
lock_hash="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:hashtak"..ChatId)=="ked"then
lock_hash="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:hashtak"..ChatId)=="ktm"then
lock_hash="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:hashtak"..ChatId)=="kick"then
lock_hash="بالطرد"
else
lock_hash="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="del"then
lock_muse="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="ked"then
lock_muse="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="ktm"then
lock_muse="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="kick"then
lock_muse="بالطرد"
else
lock_muse="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Video"..ChatId)=="del"then
lock_ved="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Video"..ChatId)=="ked"then
lock_ved="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Video"..ChatId)=="ktm"then
lock_ved="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Video"..ChatId)=="kick"then
lock_ved="بالطرد"
else
lock_ved="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Animation"..ChatId)=="del"then
lock_gif="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Animation"..ChatId)=="ked"then
lock_gif="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Animation"..ChatId)=="ktm"then
lock_gif="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Animation"..ChatId)=="kick"then
lock_gif="بالطرد"
else
lock_gif="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Sticker"..ChatId)=="del"then
lock_ste="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Sticker"..ChatId)=="ked"then
lock_ste="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Sticker"..ChatId)=="ktm"then
lock_ste="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Sticker"..ChatId)=="kick"then
lock_ste="بالطرد"
else
lock_ste="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:geam"..ChatId)=="del"then
lock_geam="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:geam"..ChatId)=="ked"then
lock_geam="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:geam"..ChatId)=="ktm"then
lock_geam="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:geam"..ChatId)=="kick"then
lock_geam="بالطرد"
else
lock_geam="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="del"then
lock_vico="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="ked"then
lock_vico="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="ktm"then
lock_vico="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:vico"..ChatId)=="kick"then
lock_vico="بالطرد"
else
lock_vico="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Keyboard"..ChatId)=="del"then
lock_inlin="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Keyboard"..ChatId)=="ked"then
lock_inlin="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Keyboard"..ChatId)=="ktm"then
lock_inlin="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Keyboard"..ChatId)=="kick"then
lock_inlin="بالطرد"
else
lock_inlin="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:forward"..ChatId)=="del"then
lock_fwd="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:forward"..ChatId)=="ked"then
lock_fwd="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:forward"..ChatId)=="ktm"then
lock_fwd="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:forward"..ChatId)=="kick"then
lock_fwd="بالطرد"
else
lock_fwd="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Document"..ChatId)=="del"then
lock_file="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Document"..ChatId)=="ked"then
lock_file="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Document"..ChatId)=="ktm"then
lock_file="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Document"..ChatId)=="kick"then
lock_file="بالطرد"
else
lock_file="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Unsupported"..ChatId)=="del"then
lock_self="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Unsupported"..ChatId)=="ked"then
lock_self="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Unsupported"..ChatId)=="ktm"then
lock_self="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Unsupported"..ChatId)=="kick"then
lock_self="بالطرد"
else
lock_self="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Bot:kick"..ChatId)=="del"then
lock_bots="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Bot:kick"..ChatId)=="ked"then
lock_bots="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Bot:kick"..ChatId)=="kick"then
lock_bots="بالطرد"
else
lock_bots="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Markdaun"..ChatId)=="del"then
lock_mark="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Markdaun"..ChatId)=="ked"then
lock_mark="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Markdaun"..ChatId)=="ktm"then
lock_mark="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Markdaun"..ChatId)=="kick"then
lock_mark="بالطرد"
else
lock_mark="❌"
end
ifRedis:get(BLANK.."BLANK:Lock:Spam"..ChatId)=="del"then
lock_spam="✔️"
elseifRedis:get(BLANK.."BLANK:Lock:Spam"..ChatId)=="ked"then
lock_spam="بالتقيد"
elseifRedis:get(BLANK.."BLANK:Lock:Spam"..ChatId)=="ktm"then
lock_spam="بالكتم"
elseifRedis:get(BLANK.."BLANK:Lock:Spam"..ChatId)=="kick"then
lock_spam="بالطرد"
else
lock_spam="❌"
end
return{
lock_pin=lock_pin,
lock_tagservr=lock_tagservr,
lock_text=lock_text,
lock_add=lock_add,
lock_join=lock_join,
lock_edit=lock_edit,
flood=flood,
lock_photo=lock_photo,
lock_phon=lock_phon,
lock_links=lock_links,
lock_cmds=lock_cmds,
lock_mark=lock_mark,
lock_user=lock_user,
lock_hash=lock_hash,
lock_muse=lock_muse,
lock_ved=lock_ved,
lock_gif=lock_gif,
lock_ste=lock_ste,
lock_geam=lock_geam,
lock_vico=lock_vico,
lock_inlin=lock_inlin,
lock_fwd=lock_fwd,
lock_file=lock_file,
lock_self=lock_self,
lock_bots=lock_bots,
lock_spam=lock_spam
}
end
functionTotal_message(Message)
localMsgText=''
iftonumber(Message)<100then
MsgText='تفاعلمحلو😤'
elseiftonumber(Message)<200then
MsgText='تفاعلكضعيفليش'
elseiftonumber(Message)<400then
MsgText='عفيهاتفاعل😽'
elseiftonumber(Message)<700then
MsgText='شكدتحجي😒'
elseiftonumber(Message)<1200then
MsgText='ملكالتفاعل😼'
elseiftonumber(Message)<2000then
MsgText='موشتفاعلغنبله'
elseiftonumber(Message)<3500then
MsgText='اساسلتفاعلياب'
elseiftonumber(Message)<4000then
MsgText='عوفلجواهروتفاعلبزودك'
elseiftonumber(Message)<4500then
MsgText='قمةالتفاعل'
elseiftonumber(Message)<5500then
MsgText='شهلتفاعلاستمريكيك'
elseiftonumber(Message)<7000then
MsgText='غنبلهوربي🌟'
elseiftonumber(Message)<9500then
MsgText='حلغوممالتفاعل'
elseiftonumber(Message)<10000000000then
MsgText='تفاعلناروشرار'
end
returnMsgText
end

functionGetpermissions(ChatId)
localGet_Chat=LuaTele.getChat(ChatId)
ifGet_Chat.permissions.can_add_web_page_previewsthen
web=trueelseweb=false
end
ifGet_Chat.permissions.can_change_infothen
info=trueelseinfo=false
end
ifGet_Chat.permissions.can_invite_usersthen
invite=trueelseinvite=false
end
ifGet_Chat.permissions.can_pin_messagesthen
pin=trueelsepin=false
end
ifGet_Chat.permissions.can_send_media_messagesthen
media=trueelsemedia=false
end
ifGet_Chat.permissions.can_send_messagesthen
messges=trueelsemessges=false
end
ifGet_Chat.permissions.can_send_other_messagesthen
other=trueelseother=false
end
ifGet_Chat.permissions.can_send_pollsthen
polls=trueelsepolls=false
end

return{
web=web,
info=info,
invite=invite,
pin=pin,
media=media,
messges=messges,
other=other,
polls=polls
}
end
functionGet_permissions(ChatId,UserId,MsgId)
localGet_Chat=LuaTele.getChat(ChatId)
ifGet_Chat.permissions.can_add_web_page_previewsthen
web='❬✔️❭'elseweb='❬❌❭'
end
ifGet_Chat.permissions.can_change_infothen
info='❬✔️❭'elseinfo='❬❌❭'
end
ifGet_Chat.permissions.can_invite_usersthen
invite='❬✔️❭'elseinvite='❬❌❭'
end
ifGet_Chat.permissions.can_pin_messagesthen
pin='❬✔️❭'elsepin='❬❌❭'
end
ifGet_Chat.permissions.can_send_media_messagesthen
media='❬✔️❭'elsemedia='❬❌❭'
end
ifGet_Chat.permissions.can_send_messagesthen
messges='❬✔️❭'elsemessges='❬❌❭'
end
ifGet_Chat.permissions.can_send_other_messagesthen
other='❬✔️❭'elseother='❬❌❭'
end
ifGet_Chat.permissions.can_send_pollsthen
polls='❬✔️❭'elsepolls='❬❌❭'
end
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text='-ارسالالويب:'..web,data=UserId..'/web'},
},
{
{text='-تغييرمعلوماتالمجموعه:'..info,data=UserId..'/info'},
},
{
{text='-اضافهمستخدمين:'..invite,data=UserId..'/invite'},
},
{
{text='-تثبيتالرسائل:'..pin,data=UserId..'/pin'},
},
{
{text='-ارسالالميديا:'..media,data=UserId..'/media'},
},
{
{text='-ارسالالرسائل:.'..messges,data=UserId..'/messges'},
},
{
{text='-اضافهالبوتات:'..other,data=UserId..'/other'},
},
{
{text='-ارسالاستفتاء:'..polls,data=UserId..'/polls'},
},
{
{text='-اخفاءالامر',data=IdUser..'/'..'/delAmr'}
},
}
}
LuaTele.editMessageText(ChatId,MsgId,"☆︙صلاحياتالمجموعه-",'md',false,false,reply_markup)
end
functionStatusrestricted(ChatId,UserId)
return{
BanAll=Redis:sismember(BLANK.."BLANK:BanAll:Groups",UserId),
BanGroup=Redis:sismember(BLANK.."BLANK:BanGroup:Group"..ChatId,UserId),
SilentGroup=Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..ChatId,UserId)
}
end
functionReply_Status(UserId,TextMsg)
localUserInfo=LuaTele.getUser(UserId)
forName_Userinstring.gmatch(UserInfo.first_name,"[^%s]+")do
UserInfo.first_name=Name_User
break
end
ifUserInfo.usernamethen
UserInfousername='['..UserInfo.first_name..'](t.me/'..UserInfo.username..')'
else
UserInfousername='['..UserInfo.first_name..'](tg://user?id='..UserId..')'
end
return{
Lock='[-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.](https://t.me/C_T_V_blank\n*—————————\n☆︙بواسطه←*'..UserInfousername..'\n*'..TextMsg..'\n☆︙خاصيهالمسح*',
unLock='[-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.](https://t.me/C_T_V_blank\n*—————————\n☆︙بواسطه←*'..UserInfousername..'\n'..TextMsg,
lockKtm='[-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.](https://t.me/C_T_V_blank\n*—————————\n☆︙بواسطه←*'..UserInfousername..'\n*'..TextMsg..'\n☆︙خاصيهالكتم*',
lockKid='[-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.](https://t.me/C_T_V_blank\n*—————————\n☆︙بواسطه←*'..UserInfousername..'\n*'..TextMsg..'\n☆︙خاصيهالتقييد*',
lockKick='[-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.](https://t.me/C_T_V_blank\n*—————————\n☆︙بواسطه←*'..UserInfousername..'\n*'..TextMsg..'\n☆︙خاصيهالطرد*',
Reply='[-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.](https://t.me/C_T_V_blank\n*—————————\n☆︙المستخدم←*'..UserInfousername..'\n*'..TextMsg..'*'
}
end
functionStatusCanOrNotCan(ChatId,UserId)
Status=nil
DevelopersQ=Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId)
Developers=Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId)
TheBasics=Redis:sismember(BLANK.."BLANK:TheBasics:Group"..ChatId,UserId)
Originators=Redis:sismember(BLANK.."BLANK:Originators:Group"..ChatId,UserId)
Managers=Redis:sismember(BLANK.."BLANK:Managers:Group"..ChatId,UserId)
Addictive=Redis:sismember(BLANK.."BLANK:Addictive:Group"..ChatId,UserId)
Distinguished=Redis:sismember(BLANK.."BLANK:Distinguished:Group"..ChatId,UserId)
StatusMember=LuaTele.getChatMember(ChatId,UserId).status.luatele
ifUserId==1498753532then
Status=true
elseifUserId==Sudo_Idthen
Status=true
elseifUserId==BLANKthen
Status=true
elseifDevelopersQthen
Status=true
elseifDevelopersthen
Status=true
elseifTheBasicsthen
Status=true
elseifOriginatorsthen
Status=true
elseifManagersthen
Status=true
elseifAddictivethen
Status=true
elseifStatusMember=="chatMemberStatusCreator"then
Status=true
elseifStatusMember=="chatMemberStatusAdministrator"then
Status=true
else
Status=false
end
returnStatus
end
functionStatusSilent(ChatId,UserId)
Status=nil
DevelopersQ=Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId)
Developers=Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId)
TheBasics=Redis:sismember(BLANK.."BLANK:TheBasics:Group"..ChatId,UserId)
Originators=Redis:sismember(BLANK.."BLANK:Originators:Group"..ChatId,UserId)
Managers=Redis:sismember(BLANK.."BLANK:Managers:Group"..ChatId,UserId)
Addictive=Redis:sismember(BLANK.."BLANK:Addictive:Group"..ChatId,UserId)
Distinguished=Redis:sismember(BLANK.."BLANK:Distinguished:Group"..ChatId,UserId)
StatusMember=LuaTele.getChatMember(ChatId,UserId).status.luatele
ifUserId==1498753532then
Status=true
elseifUserId==Sudo_Idthen
Status=true
elseifUserId==BLANKthen
Status=true
elseifDevelopersQthen
Status=true
elseifDevelopersthen
Status=true
elseifTheBasicsthen
Status=true
elseifOriginatorsthen
Status=true
elseifManagersthen
Status=true
elseifAddictivethen
Status=true
elseifStatusMember=="chatMemberStatusCreator"then
Status=true
else
Status=false
end
returnStatus
end
functionGetInfoBot(msg)
localGetMemberStatus=LuaTele.getChatMember(msg.chat_id,BLANK).status
ifGetMemberStatus.can_change_infothen
change_info=trueelsechange_info=false
end
ifGetMemberStatus.can_delete_messagesthen
delete_messages=trueelsedelete_messages=false
end
ifGetMemberStatus.can_invite_usersthen
invite_users=trueelseinvite_users=false
end
ifGetMemberStatus.can_pin_messagesthen
pin_messages=trueelsepin_messages=false
end
ifGetMemberStatus.can_restrict_membersthen
restrict_members=trueelserestrict_members=false
end
ifGetMemberStatus.can_promote_membersthen
promote=trueelsepromote=false
end
return{
SetAdmin=promote,
BanUser=restrict_members,
Invite=invite_users,
PinMsg=pin_messages,
DelMsg=delete_messages,
Info=change_info
}
end
functiondownload(url,name)
ifnotnamethen
name=url:match('([^/]+)$')
end
ifstring.find(url,'https')then
data,res=https.request(url)
elseifstring.find(url,'http')then
data,res=http.request(url)
else
return'Thelinkformatisincorrect.'
end
ifres~=200then
return'checkurl,errorcode:'..res
else
file=io.open(name,'wb')
file:write(data)
file:close()
print('Downloaded:>'..name)
return'./'..name
end
end
localfunctionInfo_Video(x)
localf=io.popen(x)
iffthen
locals=f:read"*a"
f:close()
ifs=='a'then
end
returns
end
end
functionChannelJoin(msg)
JoinChannel=true
localChannel=Redis:get(BLANK..'BLANK:Channel:Join')
ifChannelthen
localurl,res=https.request('https://api.telegram.org/bot'..Token..'/getchatmember?chat_id=@'..Channel..'&user_id='..msg.sender.user_id)
localChannelJoin=JSON.decode(url)
ifChannelJoin.result.status=="left"then
JoinChannel=false
end
end
returnJoinChannel
end
functionFile_Bot_Run(msg,data)
localmsg_chat_id=msg.chat_id
localmsg_reply_id=msg.reply_to_message_id
localmsg_user_send_id=msg.sender.user_id
localmsg_id=msg.id
localtext=nil
ifmsg.sender.luatele=="messageSenderChat"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
returnfalse
end

ifmsg.dateandmsg.date<tonumber(os.time()-15)then
print("->>OldMessageEnd<<-")
returnfalse
end
ifdata.content.textthen
text=data.content.text.text
end
iftonumber(msg.sender.user_id)==tonumber(BLANK)then
print('ThisisreplyforBot')
returnfalse
end
ifStatusrestricted(msg.chat_id,msg.sender.user_id).BanAll==truethen
returnLuaTele.deleteMessages(msg.chat_id,{[1]=msg.id}),LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
elseifStatusrestricted(msg.chat_id,msg.sender.user_id).BanGroup==truethen
returnLuaTele.deleteMessages(msg.chat_id,{[1]=msg.id}),LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
elseifStatusrestricted(msg.chat_id,msg.sender.user_id).SilentGroup==truethen
returnLuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
end
iftonumber(msg.sender.user_id)==1498753532then
msg.Name_Controller='مطورالسورس'
msg.The_Controller=1
elseifThe_ControllerAll(msg.sender.user_id)==truethen
msg.The_Controller=1
msg.Name_Controller='المطورالاساسي'
elseifRedis:sismember(BLANK.."BLANK:DevelopersQ:Groups",msg.sender.user_id)==truethen
msg.The_Controller=2
msg.Name_Controller='المطورالثانوي'
elseifRedis:sismember(BLANK.."BLANK:Developers:Groups",msg.sender.user_id)==truethen
msg.The_Controller=3
msg.Name_Controller=Redis:get(BLANK.."BLANK:Developer:Bot:Reply"..msg.chat_id)or'المطور'
elseifRedis:sismember(BLANK.."BLANK:TheBasics:Group"..msg.chat_id,msg.sender.user_id)==truethen
msg.The_Controller=4
msg.Name_Controller=Redis:get(BLANK.."BLANK:President:Group:Reply"..msg.chat_id)or'المنشئالاساسي⭐'
elseifRedis:sismember(BLANK.."BLANK:Originators:Group"..msg.chat_id,msg.sender.user_id)==truethen
msg.The_Controller=5
msg.Name_Controller=Redis:get(BLANK.."BLANK:Constructor:Group:Reply"..msg.chat_id)or'المنشئ'
elseifRedis:sismember(BLANK.."BLANK:Managers:Group"..msg.chat_id,msg.sender.user_id)==truethen
msg.The_Controller=6
msg.Name_Controller=Redis:get(BLANK.."BLANK:Manager:Group:Reply"..msg.chat_id)or'المدير'
elseifRedis:sismember(BLANK.."BLANK:Addictive:Group"..msg.chat_id,msg.sender.user_id)==truethen
msg.The_Controller=7
msg.Name_Controller=Redis:get(BLANK.."BLANK:Admin:Group:Reply"..msg.chat_id)or'الادمن'
elseifRedis:sismember(BLANK.."BLANK:Distinguished:Group"..msg.chat_id,msg.sender.user_id)==truethen
msg.The_Controller=8
msg.Name_Controller=Redis:get(BLANK.."BLANK:Vip:Group:Reply"..msg.chat_id)or'المميز'
elseiftonumber(msg.sender.user_id)==tonumber(BLANK)then
msg.The_Controller=9
else
msg.The_Controller=10
msg.Name_Controller=Redis:get(BLANK.."BLANK:Mempar:Group:Reply"..msg.chat_id)or'العضو'
end
ifmsg.The_Controller==1then
msg.ControllerBot=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2then
msg.DevelopersQ=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2ormsg.The_Controller==3then
msg.Developers=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2ormsg.The_Controller==3ormsg.The_Controller==4ormsg.The_Controller==9then
msg.TheBasics=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2ormsg.The_Controller==3ormsg.The_Controller==4ormsg.The_Controller==5ormsg.The_Controller==9then
msg.Originators=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2ormsg.The_Controller==3ormsg.The_Controller==4ormsg.The_Controller==5ormsg.The_Controller==6ormsg.The_Controller==9then
msg.Managers=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2ormsg.The_Controller==3ormsg.The_Controller==4ormsg.The_Controller==5ormsg.The_Controller==6ormsg.The_Controller==7ormsg.The_Controller==9then
msg.Addictive=true
end
ifmsg.The_Controller==1ormsg.The_Controller==2ormsg.The_Controller==3ormsg.The_Controller==4ormsg.The_Controller==5ormsg.The_Controller==6ormsg.The_Controller==7ormsg.The_Controller==8ormsg.The_Controller==9then
msg.Distinguished=true
end



ifRedis:get(BLANK.."BLANK:Lock:text"..msg_chat_id)andnotmsg.Distinguishedthen
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
returnfalse
end
ifmsg.content.luatele=="messageChatJoinByLink"then
ifRedis:get(BLANK.."BLANK:Status:Welcome"..msg_chat_id)then
localUserInfo=LuaTele.getUser(msg.sender.user_id)
localGet_Chat=LuaTele.getChat(msg_chat_id)
localWelcome=Redis:get(BLANK.."BLANK:Welcome:Group"..msg_chat_id)
ifWelcomethen
ifUserInfo.usernamethen
UserInfousername='@'..UserInfo.username
else
UserInfousername='لايوجد'
end
Welcome=Welcome:gsub('{name}',UserInfo.first_name)
Welcome=Welcome:gsub('{user}',UserInfousername)
Welcome=Welcome:gsub('{NameCh}',Get_Chat.title)
returnLuaTele.sendText(msg_chat_id,msg_id,Welcome,"md")
else
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙اطلقدخول['..UserInfo.first_name..'](tg://user?id='..msg.sender.user_id..')\n☆︙نورتالكروب{'..Get_Chat.title..'}',"md")
end
end
end
ifnotmsg.Distinguishedandmsg.content.luatele~="messageChatAddMembers"andRedis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Spam:User")then
iftonumber(msg.sender.user_id)==tonumber(BLANK)then
returnfalse
end
localfloods=Redis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Spam:User")or"nil"
localNum_Msg_Max=Redis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Num:Spam")or5
localpost_count=tonumber(Redis:get(BLANK.."BLANK:Spam:Cont"..msg.sender.user_id..":"..msg_chat_id)or0)
ifpost_count>=tonumber(Redis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Num:Spam")or5)then
localtype=Redis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Spam:User")
iftype=="kick"then
returnLuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0),LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙قامبالتكرارفيالمجموعهوتمطرده").Reply,"md",true)
end
iftype=="del"then
returnLuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
end
iftype=="keed"then
returnLuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0}),LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙قامبالتكرارفيالمجموعهوتمتقييده").Reply,"md",true)
end
iftype=="mute"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙قامبالتكرارفيالمجموعهوتمكتمه").Reply,"md",true)
end
end
Redis:setex(BLANK.."BLANK:Spam:Cont"..msg.sender.user_id..":"..msg_chat_id,tonumber(5),post_count+1)
localedit_id=data.text_or"nil"
Num_Msg_Max=5
ifRedis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Num:Spam")then
Num_Msg_Max=Redis:hget(BLANK.."BLANK:Spam:Group:User"..msg_chat_id,"Num:Spam")
end
end
iftextandnotmsg.Distinguishedthen
local_nl,ctrl_=string.gsub(text,"%c","")
local_nl,real_=string.gsub(text,"%d","")
sens=400
ifRedis:get(BLANK.."BLANK:Lock:Spam"..msg.chat_id)=="del"andstring.len(text)>(sens)orctrl_>(sens)orreal_>(sens)then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifRedis:get(BLANK.."BLANK:Lock:Spam"..msg.chat_id)=="ked"andstring.len(text)>(sens)orctrl_>(sens)orreal_>(sens)then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifRedis:get(BLANK.."BLANK:Lock:Spam"..msg.chat_id)=="kick"andstring.len(text)>(sens)orctrl_>(sens)orreal_>(sens)then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifRedis:get(BLANK.."BLANK:Lock:Spam"..msg.chat_id)=="ktm"andstring.len(text)>(sens)orctrl_>(sens)orreal_>(sens)then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
end
end
ifmsg.forward_infoandnotmsg.Distinguishedthen--التوجيه
localFwd_Group=Redis:get(BLANK.."BLANK:Lock:forward"..msg_chat_id)
ifFwd_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifFwd_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifFwd_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifFwd_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('Thisisforward')
returnfalse
end

ifmsg.reply_markupandmsg.reply_markup.luatele=="replyMarkupInlineKeyboard"then
ifnotmsg.Distinguishedthen--الكيبورد
localKeyboard_Group=Redis:get(BLANK.."BLANK:Lock:Keyboard"..msg_chat_id)
ifKeyboard_Group=="del"then
var(LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id}))
elseifKeyboard_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifKeyboard_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifKeyboard_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
end
print('Thisisreply_markup')
end

ifmsg.content.locationandnotmsg.Distinguishedthen--الموقع
iflocationthen
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
end
print('Thisislocation')
end

ifmsg.content.entitiesandmsg..content.entities[0]andmsg.content.entities[0].type.luatele=="textEntityTypeUrl"andnotmsg.Distinguishedthen--الماركداون
localMarkduan_Gtoup=Redis:get(BLANK.."BLANK:Lock:Markdaun"..msg_chat_id)
ifMarkduan_Gtoup=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifMarkduan_Gtoup=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifMarkduan_Gtoup=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifMarkduan_Gtoup=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisistextEntityTypeUrl')
end

ifmsg.content.gameandnotmsg.Distinguishedthen--الالعاب
localGames_Group=Redis:get(BLANK.."BLANK:Lock:geam"..msg_chat_id)
ifGames_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifGames_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifGames_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifGames_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('Thisisgames')
end
ifmsg.content.luatele=="messagePinMessage"then--رسالهالتثبيت
localPin_Msg=Redis:get(BLANK.."BLANK:lockpin"..msg_chat_id)
ifPin_Msgandnotmsg.Managersthen
ifPin_Msg:match("(%d+)")then
localPinMsg=LuaTele.pinChatMessage(msg_chat_id,Pin_Msg,true)
ifPinMsg.luatele~="ok"then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لااستطيعتثبيتالرسائلليستلديهصلاحيه","md",true)
end
end
localUnPin=LuaTele.unpinChatMessage(msg_chat_id)
ifUnPin.luatele~="ok"then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لااستطيعالغاءتثبيتالرسائلليستلديهصلاحيه","md",true)
end
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙التثبيتمعطلمنقبلالمدراء","md",true)
end
print('ThisismessagePin')
end

ifmsg.content.luatele=="messageChatJoinByLink"then
ifRedis:get(BLANK.."BLANK:Lock:Join"..msg.chat_id)=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
returnfalse
end
end

ifmsg.content.luatele=="messageChatAddMembers"then--اضافهاشخاص
print('ThisisAddMembeers')
Redis:incr(BLANK.."BLANK:Num:Add:Memp"..msg_chat_id..":"..msg.sender.user_id)
localAddMembrs=Redis:get(BLANK.."BLANK:Lock:AddMempar"..msg_chat_id)
localLock_Bots=Redis:get(BLANK.."BLANK:Lock:Bot:kick"..msg_chat_id)
fork,vinpairs(msg.content.member_user_ids)do
localInfo_User=LuaTele.getUser(v)
ifInfo_User.type.luatele=="userTypeBot"then
ifLock_Bots=="del"andnotmsg.Distinguishedthen
LuaTele.setChatMemberStatus(msg.chat_id,v,'banned',0)
elseifLock_Bots=="kick"andnotmsg.Distinguishedthen
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
LuaTele.setChatMemberStatus(msg.chat_id,v,'banned',0)
end
elseifInfo_User.type.luatele=="userTypeRegular"then
Redis:incr(BLANK.."BLANK:Num:Add:Memp"..msg.chat_id..":"..msg.sender.user_id)
ifAddMembrs=="kick"andnotmsg.Distinguishedthen
LuaTele.setChatMemberStatus(msg.chat_id,v,'banned',0)
end
end
end
end

ifmsg.content.luatele=="messageContact"andnotmsg.Distinguishedthen--الجهات
localContact_Group=Redis:get(BLANK.."BLANK:Lock:Contact"..msg_chat_id)
ifContact_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifContact_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifContact_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifContact_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisContact')
end

ifmsg.content.luatele=="messageVideoNote"andnotmsg.Distinguishedthen--بصمهالفيديو
localVideonote_Group=Redis:get(BLANK.."BLANK:Lock:Unsupported"..msg_chat_id)
ifVideonote_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifVideonote_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifVideonote_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifVideonote_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisvideoNote')
end

ifmsg.content.luatele=="messageDocument"andnotmsg.Distinguishedthen--الملفات
localDocument_Group=Redis:get(BLANK.."BLANK:Lock:Document"..msg_chat_id)
ifDocument_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifDocument_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifDocument_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifDocument_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisDocument')
end

ifmsg.content.luatele=="messageAudio"andnotmsg.Distinguishedthen--الملفاتالصوتيه
localAudio_Group=Redis:get(BLANK.."BLANK:Lock:Audio"..msg_chat_id)
ifAudio_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifAudio_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifAudio_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifAudio_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisAudio')
end

ifmsg.content.luatele=="messageVideo"andnotmsg.Distinguishedthen--الفيديو
localVideo_Grouo=Redis:get(BLANK.."BLANK:Lock:Video"..msg_chat_id)
ifVideo_Grouo=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifVideo_Grouo=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifVideo_Grouo=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifVideo_Grouo=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisVideo')
end

ifmsg.content.luatele=="messageVoiceNote"andnotmsg.Distinguishedthen--البصمات
localVoice_Group=Redis:get(BLANK.."BLANK:Lock:vico"..msg_chat_id)
ifVoice_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifVoice_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifVoice_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifVoice_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisVoice')
end

ifmsg.content.luatele=="messageSticker"andnotmsg.Distinguishedthen--الملصقات
localSticker_Group=Redis:get(BLANK.."BLANK:Lock:Sticker"..msg_chat_id)
ifSticker_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifSticker_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifSticker_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifSticker_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisSticker')
end

ifmsg.via_bot_user_id~=0andnotmsg.Distinguishedthen--انلاين
localInlen_Group=Redis:get(BLANK.."BLANK:Lock:Inlen"..msg_chat_id)
ifInlen_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifInlen_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifInlen_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifInlen_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('Thisisviabot')
end

ifmsg.content.luatele=="messageAnimation"andnotmsg.Distinguishedthen--المتحركات
localGif_group=Redis:get(BLANK.."BLANK:Lock:Animation"..msg_chat_id)
ifGif_group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifGif_group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifGif_group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifGif_group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisAnimation')
end

ifmsg.content.luatele=="messagePhoto"andnotmsg.Distinguishedthen--الصور
localPhoto_Group=Redis:get(BLANK.."BLANK:Lock:Photo"..msg_chat_id)
ifPhoto_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifPhoto_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifPhoto_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifPhoto_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('ThisisPhotodelete')
end
ifmsg.content.photoandRedis:get(BLANK.."BLANK:Chat:Photo"..msg_chat_id..":"..msg.sender.user_id)then
localChatPhoto=LuaTele.setChatPhoto(msg_chat_id,msg.content.photo.sizes[2].photo.remote.id)
if(ChatPhoto.luatele=="error")then
Redis:del(BLANK.."BLANK:Chat:Photo"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙لااستطيعتغييرصورهالمجموعهلانيلستادمناوليستلديهالصلاحيه","md",true)
end
Redis:del(BLANK.."BLANK:Chat:Photo"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتغييرصورهالمجموعهالمجموعهالى","md",true)
end
if(textandtext:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/")
ortextandtext:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/")
ortextandtext:match("[Tt].[Mm][Ee]/")
ortextandtext:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/")
ortextandtext:match(".[Pp][Ee]")
ortextandtext:match("[Hh][Tt][Tt][Pp][Ss]://")
ortextandtext:match("[Hh][Tt][Tt][Pp]://")
ortextandtext:match("[Ww][Ww][Ww].")
ortextandtext:match(".[Cc][Oo][Mm]"))ortextandtext:match("[Hh][Tt][Tt][Pp][Ss]://")ortextandtext:match("[Hh][Tt][Tt][Pp]://")ortextandtext:match("[Ww][Ww][Ww].")ortextandtext:match(".[Cc][Oo][Mm]")ortextandtext:match(".[Tt][Kk]")ortextandtext:match(".[Mm][Ll]")ortextandtext:match(".[Oo][Rr][Gg]")then
locallink_Group=Redis:get(BLANK.."BLANK:Lock:Link"..msg_chat_id)
ifnotmsg.Distinguishedthen
iflink_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseiflink_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseiflink_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseiflink_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('Thisislink')
returnfalse
end
end
iftextandtext:match("@[%a%d_]+")andnotmsg.Distinguishedthen
localUserName_Group=Redis:get(BLANK.."BLANK:Lock:User:Name"..msg_chat_id)
ifUserName_Group=="del"then
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifUserName_Group=="ked"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifUserName_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifUserName_Group=="kick"then
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('Thisisusername')
end
iftextandtext:match("#[%a%d_]+")andnotmsg.Distinguishedthen
localHashtak_Group=Redis:get(BLANK.."BLANK:Lock:hashtak"..msg_chat_id)
ifHashtak_Group=="del"then
returnLuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifHashtak_Group=="ked"then
returnLuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifHashtak_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifHashtak_Group=="kick"then
returnLuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
print('Thisishashtak')
end
iftextandtext:match("/[%a%d_]+")andnotmsg.Distinguishedthen
localcomd_Group=Redis:get(BLANK.."BLANK:Lock:Cmd"..msg_chat_id)
ifcomd_Group=="del"then
returnLuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
elseifcomd_Group=="ked"then
returnLuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
elseifcomd_Group=="ktm"then
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg.chat_id,msg.sender.user_id)
elseifcomd_Group=="kick"then
returnLuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
end
end
if(Redis:get(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id)=='true')then
iftextormsg.content.photoormsg.content.animationormsg.content.stickerthen
ifmsg.content.photothen
Filters='صوره'
Redis:sadd(BLANK.."BLANK:List:Filter"..msg_chat_id,'photo:'..msg.content.photo.sizes[1].photo.id)
Redis:set(BLANK.."BLANK:Filter:Text"..msg.sender.user_id..':'..msg_chat_id,msg.content.photo.sizes[1].photo.id)
elseifmsg.content.animationthen
Filters='متحركه'
Redis:sadd(BLANK.."BLANK:List:Filter"..msg_chat_id,'animation:'..msg.content.animation.animation.id)
Redis:set(BLANK.."BLANK:Filter:Text"..msg.sender.user_id..':'..msg_chat_id,msg.content.animation.animation.id)
elseifmsg.content.stickerthen
Filters='ملصق'
Redis:sadd(BLANK.."BLANK:List:Filter"..msg_chat_id,'sticker:'..msg.content.sticker.sticker.id)
Redis:set(BLANK.."BLANK:Filter:Text"..msg.sender.user_id..':'..msg_chat_id,msg.content.sticker.sticker.id)
elseiftextthen
Redis:set(BLANK.."BLANK:Filter:Text"..msg.sender.user_id..':'..msg_chat_id,text)
Redis:sadd(BLANK.."BLANK:List:Filter"..msg_chat_id,'text:'..text)
Filters='نص'
end
Redis:set(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id,'true1')
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙ارسلتحذير("..Filters..")عندارساله","md",true)
end
end
iftextand(Redis:get(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id)=='true1')then
localText_Filter=Redis:get(BLANK.."BLANK:Filter:Text"..msg.sender.user_id..':'..msg_chat_id)
ifText_Filterthen
Redis:set(BLANK.."BLANK:Filter:Group:"..Text_Filter..msg_chat_id,text)
end
Redis:del(BLANK.."BLANK:Filter:Text"..msg.sender.user_id..':'..msg_chat_id)
Redis:del(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تماضافهردالتحذير","md",true)
end
iftextand(Redis:get(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id)=='DelFilter')then
iftextormsg.content.photoormsg.content.animationormsg.content.stickerthen
ifmsg.content.photothen
Filters='الصوره'
Redis:srem(BLANK.."BLANK:List:Filter"..msg_chat_id,'photo:'..msg.content.photo.sizes[1].photo.id)
Redis:del(BLANK.."BLANK:Filter:Group:"..msg.content.photo.sizes[1].photo.id..msg_chat_id)
elseifmsg.content.animationthen
Filters='المتحركه'
Redis:srem(BLANK.."BLANK:List:Filter"..msg_chat_id,'animation:'..msg.content.animation.animation.id)
Redis:del(BLANK.."BLANK:Filter:Group:"..msg.content.animation.animation.id..msg_chat_id)
elseifmsg.content.stickerthen
Filters='الملصق'
Redis:srem(BLANK.."BLANK:List:Filter"..msg_chat_id,'sticker:'..msg.content.sticker.sticker.id)
Redis:del(BLANK.."BLANK:Filter:Group:"..msg.content.sticker.sticker.id..msg_chat_id)
elseiftextthen
Redis:srem(BLANK.."BLANK:List:Filter"..msg_chat_id,'text:'..text)
Redis:del(BLANK.."BLANK:Filter:Group:"..text..msg_chat_id)
Filters='النص'
end
Redis:del(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمالغاءمنع("..Filters..")","md",true)
end
end
iftextormsg.content.photoormsg.content.animationormsg.content.stickerthen
ifmsg.content.photothen
DelFilters=msg.content.photo.sizes[1].photo.id
statusfilter='الصوره'
elseifmsg.content.animationthen
DelFilters=msg.content.animation.animation.id
statusfilter='المتحركه'
elseifmsg.content.stickerthen
DelFilters=msg.content.sticker.sticker.id
statusfilter='الملصق'
elseiftextthen
DelFilters=text
statusfilter='الرساله'
end
localReplyFilters=Redis:get(BLANK.."BLANK:Filter:Group:"..DelFilters..msg_chat_id)
ifReplyFiltersandnotmsg.Distinguishedthen
LuaTele.deleteMessages(msg.chat_id,{[1]=msg.id})
returnLuaTele.sendText(msg_chat_id,msg_id,"*☆︙لقدتممنعهذه("..statusfilter..")هنا*\n☆︙"..ReplyFilters,"md",true)
end
end
iftextandRedis:get(BLANK.."BLANK:Command:Reids:Group:Del"..msg_chat_id..":"..msg.sender.user_id)=="true"then
localNewCmmd=Redis:get(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..text)
ifNewCmmdthen
Redis:del(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..text)
Redis:del(BLANK.."BLANK:Command:Reids:Group:New"..msg_chat_id)
Redis:srem(BLANK.."BLANK:Command:List:Group"..msg_chat_id,text)
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمازالةهاذا←{"..text.."}","md",true)
else
LuaTele.sendText(msg_chat_id,msg_id,"☆︙لايوجدامربهاذاالاسم","md",true)
end
Redis:del(BLANK.."BLANK:Command:Reids:Group:Del"..msg_chat_id..":"..msg.sender.user_id)
returnfalse
end
iftextandRedis:get(BLANK.."BLANK:Command:Reids:Group"..msg_chat_id..":"..msg.sender.user_id)=="true"then
Redis:set(BLANK.."BLANK:Command:Reids:Group:New"..msg_chat_id,text)
Redis:del(BLANK.."BLANK:Command:Reids:Group"..msg_chat_id..":"..msg.sender.user_id)
Redis:set(BLANK.."BLANK:Command:Reids:Group:End"..msg_chat_id..":"..msg.sender.user_id,"true1")
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسلالامرالجديدليتموضعهمكانالقديم","md",true)
end
iftextandRedis:get(BLANK.."BLANK:Command:Reids:Group:End"..msg_chat_id..":"..msg.sender.user_id)=="true1"then
localNewCmd=Redis:get(BLANK.."BLANK:Command:Reids:Group:New"..msg_chat_id)
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..text,NewCmd)
Redis:sadd(BLANK.."BLANK:Command:List:Group"..msg_chat_id,text)
Redis:del(BLANK.."BLANK:Command:Reids:Group:End"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحفظالامرباسم←{"..text..'}',"md",true)
end
ifRedis:get(BLANK.."BLANK:Set:Link"..msg_chat_id..""..msg.sender.user_id)then
iftext=="الغاء"then
Redis:del(BLANK.."BLANK:Set:Link"..msg_chat_id..""..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"📥︙تمالغاءحفظالرابط","md",true)
end
iftextandtext:match("(https://telegram.me/joinchat/%S+)")ortextandtext:match("(https://t.me/joinchat/%S+)")then
localLinkGroup=text:match("(https://telegram.me/joinchat/%S+)")ortext:match("(https://t.me/joinchat/%S+)")
Redis:set(BLANK.."BLANK:Group:Link"..msg_chat_id,LinkGroup)
Redis:del(BLANK.."BLANK:Set:Link"..msg_chat_id..""..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"📥︙تمحفظالرابطبنجاح","md",true)
end
end
ifRedis:get(BLANK.."Tshake:Welcome:Group"..msg_chat_id..""..msg.sender.user_id)then
iftext=="الغاء"then
Redis:del(BLANK.."Tshake:Welcome:Group"..msg_chat_id..""..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمالغاءحفظالترحيب","md",true)
end
Redis:del(BLANK.."Tshake:Welcome:Group"..msg_chat_id..""..msg.sender.user_id)
Redis:set(BLANK.."BLANK:Welcome:Group"..msg_chat_id,text)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحفظترحيبالمجموعه","md",true)
end
ifRedis:get(BLANK.."BLANK:Set:Rules:"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"then
Redis:del(BLANK.."BLANK:Set:Rules:"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمالغاءحفظالقوانين","md",true)
end
Redis:set(BLANK.."BLANK:Group:Rules"..msg_chat_id,text)
Redis:del(BLANK.."BLANK:Set:Rules:"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحفظقوانينالمجموعه","md",true)
end
ifRedis:get(BLANK.."BLANK:Set:Description:"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"then
Redis:del(BLANK.."BLANK:Set:Description:"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمالغاءحفظوصفالمجموعه","md",true)
end
LuaTele.setChatDescription(msg_chat_id,text)
Redis:del(BLANK.."BLANK:Set:Description:"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحفظوصفالمجموعه","md",true)
end
iftextormsg.content.video_noteormsg.content.documentormsg.content.audioormsg.content.videoormsg.content.voice_noteormsg.content.stickerormsg.content.animationormsg.content.photothen
localtest=Redis:get(BLANK.."BLANK:Text:Manager"..msg.sender.user_id..":"..msg_chat_id.."")
ifRedis:get(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id)=="true1"then
Redis:del(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id)
ifmsg.content.stickerthen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..test..msg_chat_id,msg.content.sticker.sticker.remote.id)
end
ifmsg.content.voice_notethen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Vico"..test..msg_chat_id,msg.content.voice_note.voice.remote.id)
end
iftextthen
text=text:gsub('"',"")
text=text:gsub('"',"")
text=text:gsub("`","")
text=text:gsub("*","")
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Text"..test..msg_chat_id,text)
end
ifmsg.content.audiothen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Audio"..test..msg_chat_id,msg.content.audio.audio.remote.id)
end
ifmsg.content.documentthen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:File"..test..msg_chat_id,msg.content.document.document.remote.id)
end
ifmsg.content.animationthen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Gif"..test..msg_chat_id,msg.content.animation.animation.remote.id)
end
ifmsg.content.video_notethen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:video_note"..test..msg_chat_id,msg.content.video_note.video.remote.id)
end
ifmsg.content.videothen
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Video"..test..msg_chat_id,msg.content.video.video.remote.id)
end
ifmsg.content.photothen
ifmsg.content.photo.sizes[1].photo.remote.idthen
idPhoto=msg.content.photo.sizes[1].photo.remote.id
elseifmsg.content.photo.sizes[2].photo.remote.idthen
idPhoto=msg.content.photo.sizes[2].photo.remote.id
elseifmsg.content.photo.sizes[3].photo.remote.idthen
idPhoto=msg.content.photo.sizes[3].photo.remote.id
end
print(idPhoto)
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Photo"..test..msg_chat_id,idPhoto)
end
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحفظردللمديربنجاح\n☆︙ارسل("..test..")لرئيةالرد","md",true)
end
end
iftextandtext:match("^(.*)$")then
ifRedis:get(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id)=="true"then
Redis:set(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id,"true1")
Redis:set(BLANK.."BLANK:Text:Manager"..msg.sender.user_id..":"..msg_chat_id,text)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Gif"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Vico"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Text"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Photo"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Video"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:File"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:video_note"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Audio"..text..msg_chat_id)
Redis:sadd(BLANK.."BLANK:List:Manager"..msg_chat_id.."",text)
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسلليالردسواءكان
❨ملف•ملصق•متحركه•صوره
•فيديو•بصمهالفيديو•بصمه•صوت•رساله❩
↯︙يمكنكاضافةالىالنص•
—————————
`#username`↬معرفالمستخدم
`#msgs`↬عددالرسائل
`#name`↬اسمالمستخدم
`#id`↬ايديالمستخدم
`#stast`↬رتبةالمستخدم
`#edit`↬عددالسحكات

]],"md",true)
returnfalse
end
end
iftextandtext:match("^(.*)$")then
ifRedis:get(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id.."")=="true2"then
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Gif"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Vico"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Text"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Photo"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Video"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:File"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Audio"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:video_note"..text..msg_chat_id)
Redis:del(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id)
Redis:srem(BLANK.."BLANK:List:Manager"..msg_chat_id.."",text)
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحذفالردمنردودالمدير","md",true)
returnfalse
end
end
iftextandRedis:get(BLANK.."BLANK:Status:ReplySudo"..msg_chat_id)then
localanemi=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Gif"..text)
localveico=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:vico"..text)
localstekr=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:stekr"..text)
localText=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Text"..text)
localphoto=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Photo"..text)
localvideo=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Video"..text)
localdocument=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:File"..text)
localaudio=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Audio"..text)
localvideo_note=Redis:get(BLANK.."BLANK:Add:Rd:Sudo:video_note"..text)
ifTextthen
localUserInfo=LuaTele.getUser(msg.sender.user_id)
localNumMsg=Redis:get(BLANK..'BLANK:Num:Message:User'..msg_chat_id..':'..msg.sender.user_id)or0
localTotalMsg=Total_message(NumMsg)
localStatus_Gps=msg.Name_Controller
localNumMessageEdit=Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg_chat_id..msg.sender.user_id)or0
localText=Text:gsub('#username',(UserInfo.usernameor'لايوجد'))
localText=Text:gsub('#name',UserInfo.first_name)
localText=Text:gsub('#id',msg.sender.user_id)
localText=Text:gsub('#edit',NumMessageEdit)
localText=Text:gsub('#msgs',NumMsg)
localText=Text:gsub('#stast',Status_Gps)
LuaTele.sendText(msg_chat_id,msg_id,Text,"md",true)
end
ifvideo_notethen
LuaTele.sendVideoNote(msg_chat_id,msg.id,video_note)
end
ifphotothen
LuaTele.sendPhoto(msg.chat_id,msg.id,photo,'')
end
ifstekrthen
LuaTele.sendSticker(msg_chat_id,msg.id,stekr)
end
ifveicothen
LuaTele.sendVoiceNote(msg_chat_id,msg.id,veico,'','md')
end
ifvideothen
LuaTele.sendVideo(msg_chat_id,msg.id,video,'',"md")
end
ifanemithen
LuaTele.sendAnimation(msg_chat_id,msg.id,anemi,'','md')
end
ifdocumentthen
LuaTele.sendDocument(msg_chat_id,msg.id,document,'','md')
end
ifaudiothen
LuaTele.sendAudio(msg_chat_id,msg.id,audio,'',"md")
end
end
iftextandRedis:get(BLANK.."BLANK:Status:Reply"..msg_chat_id)then
localanemi=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Gif"..text..msg_chat_id)
localveico=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Vico"..text..msg_chat_id)
localstekr=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..text..msg_chat_id)
localTexingt=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Text"..text..msg_chat_id)
localphoto=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Photo"..text..msg_chat_id)
localvideo=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Video"..text..msg_chat_id)
localdocument=Redis:get(BLANK.."BLANK:Add:Rd:Manager:File"..text..msg_chat_id)
localaudio=Redis:get(BLANK.."BLANK:Add:Rd:Manager:Audio"..text..msg_chat_id)
localvideo_note=Redis:get(BLANK.."BLANK:Add:Rd:Manager:video_note"..text..msg_chat_id)
ifTexingtthen
localUserInfo=LuaTele.getUser(msg.sender.user_id)
localNumMsg=Redis:get(BLANK..'BLANK:Num:Message:User'..msg_chat_id..':'..msg.sender.user_id)or0
localTotalMsg=Total_message(NumMsg)
localStatus_Gps=msg.Name_Controller
localNumMessageEdit=Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg_chat_id..msg.sender.user_id)or0
localTexingt=Texingt:gsub('#username',(UserInfo.usernameor'لايوجد'))
localTexingt=Texingt:gsub('#name',UserInfo.first_name)
localTexingt=Texingt:gsub('#id',msg.sender.user_id)
localTexingt=Texingt:gsub('#edit',NumMessageEdit)
localTexingt=Texingt:gsub('#msgs',NumMsg)
localTexingt=Texingt:gsub('#stast',Status_Gps)
LuaTele.sendText(msg_chat_id,msg_id,Texingt,"md",true)
end
ifvideo_notethen
LuaTele.sendVideoNote(msg_chat_id,msg.id,video_note)
end
ifphotothen
LuaTele.sendPhoto(msg.chat_id,msg.id,photo,'')
end
ifstekrthen
LuaTele.sendSticker(msg_chat_id,msg.id,stekr)
end
ifveicothen
LuaTele.sendVoiceNote(msg_chat_id,msg.id,veico,'','md')
end
ifvideothen
LuaTele.sendVideo(msg_chat_id,msg.id,video,'',"md")
end
ifanemithen
LuaTele.sendAnimation(msg_chat_id,msg.id,anemi,'','md')
end
ifdocumentthen
LuaTele.sendDocument(msg_chat_id,msg.id,document,'','md')
end
ifaudiothen
LuaTele.sendAudio(msg_chat_id,msg.id,audio,'',"md")
end
end
iftextormsg.content.video_noteormsg.content.documentormsg.content.audioormsg.content.videoormsg.content.voice_noteormsg.content.stickerormsg.content.animationormsg.content.photothen
localtest=Redis:get(BLANK.."BLANK:Text:Sudo:Bot"..msg.sender.user_id..":"..msg_chat_id)
ifRedis:get(BLANK.."BLANK:Set:Rd"..msg.sender.user_id..":"..msg_chat_id)=="true1"then
Redis:del(BLANK.."BLANK:Set:Rd"..msg.sender.user_id..":"..msg_chat_id)
ifmsg.content.stickerthen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:stekr"..test,msg.content.sticker.sticker.remote.id)
end
ifmsg.content.voice_notethen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:vico"..test,msg.content.voice_note.voice.remote.id)
end
ifmsg.content.animationthen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:Gif"..test,msg.content.animation.animation.remote.id)
end
iftextthen
text=text:gsub('"',"")
text=text:gsub('"',"")
text=text:gsub("`","")
text=text:gsub("*","")
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:Text"..test,text)
end
ifmsg.content.audiothen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:Audio"..test,msg.content.audio.audio.remote.id)
end
ifmsg.content.documentthen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:File"..test,msg.content.document.document.remote.id)
end
ifmsg.content.videothen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:Video"..test,msg.content.video.video.remote.id)
end
ifmsg.content.video_notethen
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:video_note"..test..msg_chat_id,msg.content.video_note.video.remote.id)
end
ifmsg.content.photothen
ifmsg.content.photo.sizes[1].photo.remote.idthen
idPhoto=msg.content.photo.sizes[1].photo.remote.id
elseifmsg.content.photo.sizes[2].photo.remote.idthen
idPhoto=msg.content.photo.sizes[2].photo.remote.id
elseifmsg.content.photo.sizes[3].photo.remote.idthen
idPhoto=msg.content.photo.sizes[3].photo.remote.id
end
Redis:set(BLANK.."BLANK:Add:Rd:Sudo:Photo"..test,idPhoto)
end
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحفظردللمطور\n☆︙ارسل("..test..")لرئيةالرد","md",true)
returnfalse
end
end
iftextandtext:match("^(.*)$")then
ifRedis:get(BLANK.."BLANK:Set:Rd"..msg.sender.user_id..":"..msg_chat_id)=="true"then
Redis:set(BLANK.."BLANK:Set:Rd"..msg.sender.user_id..":"..msg_chat_id,"true1")
Redis:set(BLANK.."BLANK:Text:Sudo:Bot"..msg.sender.user_id..":"..msg_chat_id,text)
Redis:sadd(BLANK.."BLANK:List:Rd:Sudo",text)
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسلليالردسواءكان
❨ملف•ملصق•متحركه•صوره
•فيديو•بصمهالفيديو•بصمه•صوت•رساله❩
↯︙يمكنكاضافةالىالنص•
—————————
`#username`↬معرفالمستخدم
`#msgs`↬عددالرسائل
`#name`↬اسمالمستخدم
`#id`↬ايديالمستخدم
`#stast`↬رتبةالمستخدم
`#edit`↬عددالسحكات

]],"md",true)
returnfalse
end
end
iftextandtext:match("^(.*)$")then
ifRedis:get(BLANK.."BLANK:Set:On"..msg.sender.user_id..":"..msg_chat_id)=="true"then
list={"Add:Rd:Sudo:video_note","Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
fork,vinpairs(list)do
Redis:del(BLANK..'BLANK:'..v..text)
end
Redis:del(BLANK.."BLANK:Set:On"..msg.sender.user_id..":"..msg_chat_id)
Redis:srem(BLANK.."BLANK:List:Rd:Sudo",text)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمحذفالردمنردودالمطور","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Broadcasting:Groups:Pin"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Broadcasting:Groups:Pin"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءالاذاعهللمجموعات","md",true)
end
locallist=Redis:smembers(BLANK.."BLANK:ChekBotAdd")
ifmsg.content.video_notethen
fork,vinpairs(list)do
LuaTele.sendVideoNote(v,0,msg.content.video_note.video.remote.id)
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.video_note.video.remote.id)
end
elseifmsg.content.photothen
ifmsg.content.photo.sizes[1].photo.remote.idthen
idPhoto=msg.content.photo.sizes[1].photo.remote.id
elseifmsg.content.photo.sizes[2].photo.remote.idthen
idPhoto=msg.content.photo.sizes[2].photo.remote.id
elseifmsg.content.photo.sizes[3].photo.remote.idthen
idPhoto=msg.content.photo.sizes[3].photo.remote.id
end
fork,vinpairs(list)do
LuaTele.sendPhoto(v,0,idPhoto,'')
Redis:set(BLANK.."BLANK:PinMsegees:"..v,idPhoto)
end
elseifmsg.content.stickerthen
fork,vinpairs(list)do
LuaTele.sendSticker(v,0,msg.content.sticker.sticker.remote.id)
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.sticker.sticker.remote.id)
end
elseifmsg.content.voice_notethen
fork,vinpairs(list)do
LuaTele.sendVoiceNote(v,0,msg.content.voice_note.voice.remote.id,'','md')
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.voice_note.voice.remote.id)
end
elseifmsg.content.videothen
fork,vinpairs(list)do
LuaTele.sendVideo(v,0,msg.content.video.video.remote.id,'',"md")
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.video.video.remote.id)
end
elseifmsg.content.animationthen
fork,vinpairs(list)do
LuaTele.sendAnimation(v,0,msg.content.animation.animation.remote.id,'','md')
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.animation.animation.remote.id)
end
elseifmsg.content.documentthen
fork,vinpairs(list)do
LuaTele.sendDocument(v,0,msg.content.document.document.remote.id,'','md')
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.document.document.remote.id)
end
elseifmsg.content.audiothen
fork,vinpairs(list)do
LuaTele.sendAudio(v,0,msg.content.audio.audio.remote.id,'',"md")
Redis:set(BLANK.."BLANK:PinMsegees:"..v,msg.content.audio.audio.remote.id)
end
elseiftextthen
fork,vinpairs(list)do
LuaTele.sendText(v,0,text,"md",true)
Redis:set(BLANK.."BLANK:PinMsegees:"..v,text)
end
end
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتالاذاعهالى*-"..#list.."*مجموعهفيالبوت","md",true)
Redis:del(BLANK.."BLANK:Broadcasting:Groups:Pin"..msg_chat_id..":"..msg.sender.user_id)
returnfalse
end
------------------------------------------------------------------------------------------------------------
ifRedis:get(BLANK.."BLANK:Broadcasting:Users"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Broadcasting:Users"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءالاذاعهخاص","md",true)
end
locallist=Redis:smembers(BLANK..'BLANK:Num:User:Pv')
ifmsg.content.video_notethen
fork,vinpairs(list)do
LuaTele.sendVideoNote(v,0,msg.content.video_note.video.remote.id)
end
elseifmsg.content.photothen
ifmsg.content.photo.sizes[1].photo.remote.idthen
idPhoto=msg.content.photo.sizes[1].photo.remote.id
elseifmsg.content.photo.sizes[2].photo.remote.idthen
idPhoto=msg.content.photo.sizes[2].photo.remote.id
elseifmsg.content.photo.sizes[3].photo.remote.idthen
idPhoto=msg.content.photo.sizes[3].photo.remote.id
end
fork,vinpairs(list)do
LuaTele.sendPhoto(v,0,idPhoto,'')
end
elseifmsg.content.stickerthen
fork,vinpairs(list)do
LuaTele.sendSticker(v,0,msg.content.sticker.sticker.remote.id)
end
elseifmsg.content.voice_notethen
fork,vinpairs(list)do
LuaTele.sendVoiceNote(v,0,msg.content.voice_note.voice.remote.id,'','md')
end
elseifmsg.content.videothen
fork,vinpairs(list)do
LuaTele.sendVideo(v,0,msg.content.video.video.remote.id,'',"md")
end
elseifmsg.content.animationthen
fork,vinpairs(list)do
LuaTele.sendAnimation(v,0,msg.content.animation.animation.remote.id,'','md')
end
elseifmsg.content.documentthen
fork,vinpairs(list)do
LuaTele.sendDocument(v,0,msg.content.document.document.remote.id,'','md')
end
elseifmsg.content.audiothen
fork,vinpairs(list)do
LuaTele.sendAudio(v,0,msg.content.audio.audio.remote.id,'',"md")
end
elseiftextthen
fork,vinpairs(list)do
LuaTele.sendText(v,0,text,"md",true)
end
end
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتالاذاعهالى*-"..#list.."*مشتركفيالبوت","md",true)
Redis:del(BLANK.."BLANK:Broadcasting:Users"..msg_chat_id..":"..msg.sender.user_id)
returnfalse
end
------------------------------------------------------------------------------------------------------------
ifRedis:get(BLANK.."BLANK:Broadcasting:Groups"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Broadcasting:Groups"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءالاذاعهللمجموعات","md",true)
end
locallist=Redis:smembers(BLANK.."BLANK:ChekBotAdd")
ifmsg.content.video_notethen
fork,vinpairs(list)do
LuaTele.sendVideoNote(v,0,msg.content.video_note.video.remote.id)
end
elseifmsg.content.photothen
ifmsg.content.photo.sizes[1].photo.remote.idthen
idPhoto=msg.content.photo.sizes[1].photo.remote.id
elseifmsg.content.photo.sizes[2].photo.remote.idthen
idPhoto=msg.content.photo.sizes[2].photo.remote.id
elseifmsg.content.photo.sizes[3].photo.remote.idthen
idPhoto=msg.content.photo.sizes[3].photo.remote.id
end
fork,vinpairs(list)do
LuaTele.sendPhoto(v,0,idPhoto,'')
end
elseifmsg.content.stickerthen
fork,vinpairs(list)do
LuaTele.sendSticker(v,0,msg.content.sticker.sticker.remote.id)
end
elseifmsg.content.voice_notethen
fork,vinpairs(list)do
LuaTele.sendVoiceNote(v,0,msg.content.voice_note.voice.remote.id,'','md')
end
elseifmsg.content.videothen
fork,vinpairs(list)do
LuaTele.sendVideo(v,0,msg.content.video.video.remote.id,'',"md")
end
elseifmsg.content.animationthen
fork,vinpairs(list)do
LuaTele.sendAnimation(v,0,msg.content.animation.animation.remote.id,'','md')
end
elseifmsg.content.documentthen
fork,vinpairs(list)do
LuaTele.sendDocument(v,0,msg.content.document.document.remote.id,'','md')
end
elseifmsg.content.audiothen
fork,vinpairs(list)do
LuaTele.sendAudio(v,0,msg.content.audio.audio.remote.id,'',"md")
end
elseiftextthen
fork,vinpairs(list)do
LuaTele.sendText(v,0,text,"md",true)
end
end
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتالاذاعهالى*-"..#list.."*مجموعهفيالبوت","md",true)
Redis:del(BLANK.."BLANK:Broadcasting:Groups"..msg_chat_id..":"..msg.sender.user_id)
returnfalse
end
------------------------------------------------------------------------------------------------------------
ifRedis:get(BLANK.."BLANK:Broadcasting:Groups:Fwd"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Broadcasting:Groups:Fwd"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءالاذاعهبالتوجيهللمجموعات","md",true)
end
ifmsg.forward_infothen
locallist=Redis:smembers(BLANK.."BLANK:ChekBotAdd")
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمالتوجيهالى*-"..#list.."*مجموعهفيالبوت","md",true)
fork,vinpairs(list)do
LuaTele.forwardMessages(v,msg_chat_id,msg_id,0,0,true,false,false)
end
Redis:del(BLANK.."BLANK:Broadcasting:Groups:Fwd"..msg_chat_id..":"..msg.sender.user_id)
end
returnfalse
end
------------------------------------------------------------------------------------------------------------
ifRedis:get(BLANK.."BLANK:Broadcasting:Users:Fwd"..msg_chat_id..":"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Broadcasting:Users:Fwd"..msg_chat_id..":"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءالاذاعهبالتوجيهخاص","md",true)
end
ifmsg.forward_infothen
locallist=Redis:smembers(BLANK.."BLANK:Num:User:Pv")
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمالتوجيهالى*-"..#list.."*مجموعهفيالبوت","md",true)
fork,vinpairs(list)do
LuaTele.forwardMessages(v,msg_chat_id,msg_id,0,1,msg.media_album_id,false,true)
end
Redis:del(BLANK.."BLANK:Broadcasting:Users:Fwd"..msg_chat_id..":"..msg.sender.user_id)
end
returnfalse
end
iftextandRedis:get(BLANK..'BLANK:GetTexting:DevBLANK'..msg_chat_id..':'..msg.sender.user_id)then
iftext=='الغاء'ortext=='الغاءالامر•'then
Redis:del(BLANK..'BLANK:GetTexting:DevBLANK'..msg_chat_id..':'..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙تمالغاءحفظكليشةالمطور')
end
Redis:set(BLANK..'BLANK:Texting:DevBLANK',text)
Redis:del(BLANK..'BLANK:GetTexting:DevBLANK'..msg_chat_id..':'..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙تمحفظكليشةالمطور')
end
ifRedis:get(BLANK.."BLANK:Redis:Id:Group"..msg.chat_id..""..msg.sender.user_id)then
iftext=='الغاء'then
LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءامرتعينالايدي","md",true)
Redis:del(BLANK.."BLANK:Redis:Id:Group"..msg.chat_id..""..msg.sender.user_id)
returnfalse
end
Redis:del(BLANK.."BLANK:Redis:Id:Group"..msg.chat_id..""..msg.sender.user_id)
Redis:set(BLANK.."BLANK:Set:Id:Group"..msg.chat_id,text:match("(.*)"))
LuaTele.sendText(msg_chat_id,msg_id,'☆︙تمتعينالايديالجديد',"md",true)
end
ifRedis:get(BLANK.."BLANK:Change:Name:Bot"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Change:Name:Bot"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءامرتغيراسمالبوت","md",true)
end
Redis:del(BLANK.."BLANK:Change:Name:Bot"..msg.sender.user_id)
Redis:set(BLANK.."BLANK:Name:Bot",text)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتغيراسمالبوتالى-"..text,"md",true)
end
ifRedis:get(BLANK.."BLANK:Change:Start:Bot"..msg.sender.user_id)then
iftext=="الغاء"ortext=='الغاءالامر•'then
Redis:del(BLANK.."BLANK:Change:Start:Bot"..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمالغاءامرتغيركليشهstart","md",true)
end
Redis:del(BLANK.."BLANK:Change:Start:Bot"..msg.sender.user_id)
Redis:set(BLANK.."BLANK:Start:Bot",text)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتغييركليشهstart-"..text,"md",true)
end
ifRedis:get(BLANK.."BLANK:Game:Smile"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Smile"..msg.chat_id)then
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
Redis:del(BLANK.."BLANK:Game:Smile"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-سمايلاوسمايلات","md",true)
else
Redis:del(BLANK.."BLANK:Game:Smile"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-سمايلاوسمايلات","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Game:Monotonous"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Monotonous"..msg.chat_id)then
Redis:del(BLANK.."BLANK:Game:Monotonous"..msg.chat_id)
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-الاسرعاوترتيب","md",true)
else
Redis:del(BLANK.."BLANK:Game:Monotonous"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-الاسرعاوترتيب","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Game:Riddles"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Riddles"..msg.chat_id)then
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
Redis:del(BLANK.."BLANK:Game:Riddles"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-حزوره","md",true)
else
Redis:del(BLANK.."BLANK:Game:Riddles"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-حزوره","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Game:Meaningof"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Meaningof"..msg.chat_id)then
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
Redis:del(BLANK.."BLANK:Game:Meaningof"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-معاني","md",true)
else
Redis:del(BLANK.."BLANK:Game:Meaningof"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-معاني","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Game:Reflection"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Reflection"..msg.chat_id)then
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
Redis:del(BLANK.."BLANK:Game:Reflection"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-العكس","md",true)
else
Redis:del(BLANK.."BLANK:Game:Reflection"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-العكس","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Game:Estimate"..msg.chat_id..msg.sender.user_id)then
iftextandtext:match("^(%d+)$")then
localNUM=text:match("^(%d+)$")
iftonumber(NUM)>20then
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙عذرآلايمكنكتخمينعدداكبرمنال{20}خمنرقممابينال{1و20}\n","md",true)
end
localGETNUM=Redis:get(BLANK.."BLANK:Game:Estimate"..msg.chat_id..msg.sender.user_id)
iftonumber(NUM)==tonumber(GETNUM)then
Redis:del(BLANK.."BLANK:SADD:NUM"..msg.chat_id..msg.sender.user_id)
Redis:del(BLANK.."BLANK:Game:Estimate"..msg.chat_id..msg.sender.user_id)
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,5)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙مبروكفزتويانهوخمنتالرقمالصحيح\n🚸︙تماضافة{5}منالنقاط\n","md",true)
elseiftonumber(NUM)~=tonumber(GETNUM)then
Redis:incrby(BLANK.."BLANK:SADD:NUM"..msg.chat_id..msg.sender.user_id,1)
iftonumber(Redis:get(BLANK.."BLANK:SADD:NUM"..msg.chat_id..msg.sender.user_id))>=3then
Redis:del(BLANK.."BLANK:SADD:NUM"..msg.chat_id..msg.sender.user_id)
Redis:del(BLANK.."BLANK:Game:Estimate"..msg.chat_id..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙اوبسلقدخسرتفياللعبه\n☆︙حظآاوفرفيالمرهالقادمه\n☆︙كانالرقمالذيتمتخمينه{"..GETNUM.."}","md",true)
else
returnLuaTele.sendText(msg_chat_id,msg_id,"☆︙اوبستخمينكغلط\n☆︙ارسلرقمتخمنهمرهاخرى","md",true)
end
end
end
end
ifRedis:get(BLANK.."BLANK:Game:Difference"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Difference"..msg.chat_id)then
Redis:del(BLANK.."BLANK:Game:Difference"..msg.chat_id)
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-المختلف","md",true)
else
Redis:del(BLANK.."BLANK:Game:Difference"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-المختلف","md",true)
end
end
ifRedis:get(BLANK.."BLANK:Game:Example"..msg.chat_id)then
iftext==Redis:get(BLANK.."BLANK:Game:Example"..msg.chat_id)then
Redis:del(BLANK.."BLANK:Game:Example"..msg.chat_id)
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,1)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدفزتفياللعبه\n☆︙اللعبمرهاخرهوارسل-امثله","md",true)
else
Redis:del(BLANK.."BLANK:Game:Example"..msg.chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لقدخسرتحضااوفرفيالمرهالقادمه\n☆︙اللعبمرهاخرهوارسل-امثله","md",true)
end
end
iftextthen
localNewCmmd=Redis:get(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..text)
ifNewCmmdthen
text=(NewCmmdortext)
end
end
iftext=='رفعالنسخهالاحتياطيه'andmsg.reply_to_message_id~=0ortext=='رفعنسخهاحتياطيه'andmsg.reply_to_message_id~=0then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
localMessage_Reply=LuaTele.getMessage(msg.chat_id,msg.reply_to_message_id)
ifMessage_Reply.content.documentthen
localFile_Id=Message_Reply.content.document.document.remote.id
localName_File=Message_Reply.content.document.file_name
ifName_File~=UserBot..'.json'then
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙عذراهاذاالملفغيرمطابقمعالبوتيرجىجلبالنسخهالحقيقيه')
end--endNamefile
localFile=json:decode(https.request('https://api.telegram.org/bot'..Token..'/getfile?file_id='..File_Id))
localdownload_=download('https://api.telegram.org/file/bot'..Token..'/'..File.result.file_path,''..Name_File)
localGet_Info=io.open(download_,"r"):read('*a')
localFilesJson=JSON.decode(Get_Info)
iftonumber(BLANK)~=tonumber(FilesJson.BotId)then
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙عذراهاذاالملفغيرمطابقمعالبوتيرجىجلبالنسخهالحقيقيه')
end--endbotid
LuaTele.sendText(msg_chat_id,msg_id,'☆︙جارياسترجاعالمشتركينوالكروبات...')
Y=0
fork,vinpairs(FilesJson.UsersBot)do
Y=Y+1
Redis:sadd(BLANK..'BLANK:Num:User:Pv',v)
end
X=0
forGroupId,ListGroupinpairs(FilesJson.GroupsBot)do
X=X+1
Redis:sadd(BLANK.."BLANK:ChekBotAdd",GroupId)
ifListGroup.Presidentthen
fork,vinpairs(ListGroup.President)do
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..GroupId,v)
end
end
ifListGroup.Constructorthen
fork,vinpairs(ListGroup.Constructor)do
Redis:sadd(BLANK.."BLANK:Originators:Group"..GroupId,v)
end
end
ifListGroup.Managerthen
fork,vinpairs(ListGroup.Manager)do
Redis:sadd(BLANK.."BLANK:Managers:Group"..GroupId,v)
end
end
ifListGroup.Adminthen
fork,vinpairs(ListGroup.Admin)do
Redis:sadd(BLANK.."BLANK:Addictive:Group"..GroupId,v)
end
end
ifListGroup.Vipsthen
fork,vinpairs(ListGroup.Vips)do
Redis:sadd(BLANK.."BLANK:Distinguished:Group"..GroupId,v)
end
end
end
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙تماسترجاع{'..X..'}مجموعه\n☆︙واسترجاع{'..Y..'}مشتركفيالبوت')
end
end
iftext=='رفعنسخهتشاكي'andmsg.reply_to_message_id~=0then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
localMessage_Reply=LuaTele.getMessage(msg.chat_id,msg.reply_to_message_id)
ifMessage_Reply.content.documentthen
localFile_Id=Message_Reply.content.document.document.remote.id
localName_File=Message_Reply.content.document.file_name
iftonumber(Name_File:match('(%d+)'))~=tonumber(BLANK)then
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙عذراهاذاالملفغيرمطابقمعالبوتيرجىجلبالنسخهالحقيقيه')
end--endNamefile
localFile=json:decode(https.request('https://api.telegram.org/bot'..Token..'/getfile?file_id='..File_Id))
localdownload_=download('https://api.telegram.org/file/bot'..Token..'/'..File.result.file_path,''..Name_File)
localGet_Info=io.open(download_,"r"):read('*a')
localAll_Groups=JSON.decode(Get_Info)
ifAll_Groups.GP_BOTthen
foridg,vinpairs(All_Groups.GP_BOT)do
Redis:sadd(BLANK.."BLANK:ChekBotAdd",idg)
ifv.MNSHthen
fork,idmshinpairs(v.MNSH)do
Redis:sadd(BLANK.."BLANK:Originators:Group"..idg,idmsh)
end;end
ifv.MDERthen
fork,idmderinpairs(v.MDER)do
Redis:sadd(BLANK.."BLANK:Managers:Group"..idg,idmder)
end;end
ifv.MODthen
fork,idmodinpairs(v.MOD)do
Redis:sadd(BLANK.."BLANK:Addictive:Group"..idg,idmod)
end;end
ifv.ASASthen
fork,idASASinpairs(v.ASAS)do
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..idg,idASAS)
end;end
end
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙تماسترجاعالمجموعاتمننسخهتشاكي')
else
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙الملفلايدعمهاذاالبوت')
end
end
end
if(Redis:get(BLANK..'BLANK:Channel:Redis'..msg_chat_id..':'..msg.sender.user_id)=='true')then
iftext=='الغاء'ortext=='الغاءالامر•'then
Redis:del(BLANK..'BLANK:Channel:Redis'..msg_chat_id..':'..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙تمالغاءحفظقناةالاشتراك')
end
Redis:del(BLANK..'BLANK:Channel:Redis'..msg_chat_id..':'..msg.sender.user_id)
iftextandtext:match("^@[%a%d_]+$")then
localUserId_Info=LuaTele.searchPublicChat(text)
ifnotUserId_Info.idthen
Redis:del(BLANK..'BLANK:Channel:Redis'..msg_chat_id..':'..msg.sender.user_id)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلايوجدحساببهاذاالمعرف","md",true)
end
localChannelUser=text:gsub('@','')
ifUserId_Info.type.is_channel==truethen
localStatusMember=LuaTele.getChatMember(UserId_Info.id,BLANK).status.luatele
if(StatusMember~="chatMemberStatusAdministrator")then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙البوتعضوفيالقناةيرجىرفعالبوتادمنواعادةوضعالاشتراك","md",true)
end
Redis:set(BLANK..'BLANK:Channel:Join',ChannelUser)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمتعيينالاشتراكالاجباريعلىقناة:[@"..ChannelUser..']',"md",true)
else
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙هاذاليسمعرفقناةيرجىارسالمعرفالقناةالصحيح:[@"..ChannelUser..']',"md",true)
end
end
end
iftext=='تفعيلالاشتراكالاجباري'ortext=='تفعيلالاشتراكالاجباري•'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
Redis:set(BLANK..'BLANK:Channel:Redis'..msg_chat_id..':'..msg.sender.user_id,true)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙ارسلاليالانقناةالاشتراك","md",true)
end
iftext=='تعطيلالاشتراكالاجباري'ortext=='تعطيلالاشتراكالاجباري•'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
Redis:del(BLANK..'BLANK:Channel:Join')
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تمتعطيلالاشتراكالاجباري","md",true)
end
iftext=='تغييرالاشتراكالاجباري'ortext=='تغييرالاشتراكالاجباري•'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
Redis:set(BLANK..'BLANK:Channel:Redis'..msg_chat_id..':'..msg.sender.user_id,true)
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙ارسلاليالانقناةالاشتراك","md",true)
end
iftext=='الاشتراكالاجباري'ortext=='الاشتراكالاجباري•'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
localChannel=Redis:get(BLANK..'BLANK:Channel:Join')
ifChannelthen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙الاشتراكالاجباريمفعلعلى:[@"..Channel..']',"md",true)
else
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙لاتوجدقناةفيالاشتراكارسلتغييرالاشتراكالاجباري","md",true)
end
end
iftext=='تحديثالسورس'ortext=='تحديثالسورس•'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
--os.execute('rm-rfBLANK.lua')
--download('https://raw.githubusercontent.com/capo2020/blannk/master/BLANK.lua','BLANK.lua')
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙تمتحديثالسورس*',"md",true)
end
iftext=='جلبالنسخهالاحتياطيه•'ortext=='جلبنسخهاحتياطيه'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
localGroups=Redis:smembers(BLANK..'BLANK:ChekBotAdd')
localUsersBot=Redis:smembers(BLANK..'BLANK:Num:User:Pv')
localGet_Json='{"BotId":'..BLANK..','
if#UsersBot~=0then
Get_Json=Get_Json..'"UsersBot":['
fork,vinpairs(UsersBot)do
ifk==1then
Get_Json=Get_Json..'"'..v..'"'
else
Get_Json=Get_Json..',"'..v..'"'
end
end
Get_Json=Get_Json..']'
end
Get_Json=Get_Json..',"GroupsBot":{'
fork,vinpairs(Groups)do
localPresident=Redis:smembers(BLANK.."BLANK:TheBasics:Group"..v)
localConstructor=Redis:smembers(BLANK.."BLANK:Originators:Group"..v)
localManager=Redis:smembers(BLANK.."BLANK:Managers:Group"..v)
localAdmin=Redis:smembers(BLANK.."BLANK:Addictive:Group"..v)
localVips=Redis:smembers(BLANK.."BLANK:Distinguished:Group"..v)
ifk==1then
Get_Json=Get_Json..'"'..v..'":{'
else
Get_Json=Get_Json..',"'..v..'":{'
end
if#President~=0then
Get_Json=Get_Json..'"President":['
fork,vinpairs(President)do
ifk==1then
Get_Json=Get_Json..'"'..v..'"'
else
Get_Json=Get_Json..',"'..v..'"'
end
end
Get_Json=Get_Json..'],'
end
if#Constructor~=0then
Get_Json=Get_Json..'"Constructor":['
fork,vinpairs(Constructor)do
ifk==1then
Get_Json=Get_Json..'"'..v..'"'
else
Get_Json=Get_Json..',"'..v..'"'
end
end
Get_Json=Get_Json..'],'
end
if#Manager~=0then
Get_Json=Get_Json..'"Manager":['
fork,vinpairs(Manager)do
ifk==1then
Get_Json=Get_Json..'"'..v..'"'
else
Get_Json=Get_Json..',"'..v..'"'
end
end
Get_Json=Get_Json..'],'
end
if#Admin~=0then
Get_Json=Get_Json..'"Admin":['
fork,vinpairs(Admin)do
ifk==1then
Get_Json=Get_Json..'"'..v..'"'
else
Get_Json=Get_Json..',"'..v..'"'
end
end
Get_Json=Get_Json..'],'
end
if#Vips~=0then
Get_Json=Get_Json..'"Vips":['
fork,vinpairs(Vips)do
ifk==1then
Get_Json=Get_Json..'"'..v..'"'
else
Get_Json=Get_Json..',"'..v..'"'
end
end
Get_Json=Get_Json..'],'
end
Get_Json=Get_Json..'"Dev":"XB8Bbot"}'
end
Get_Json=Get_Json..'}}'
localFile=io.open('./'..UserBot..'.json',"w")
File:write(Get_Json)
File:close()
returnLuaTele.sendDocument(msg_chat_id,msg_id,'./'..UserBot..'.json','*☆︙تمجلبالنسخهالاحتياطيه\n☆︙تحتويعلى{'..#Groups..'}مجموعه\n☆︙وتحتويعلى{'..#UsersBot..'}مشترك*\n','md')
end
iftext=='جلبنسخهالردود'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
localGet_Json='{"BotId":'..BLANK..','
Get_Json=Get_Json..'"GroupsBotreply":{'
localGroups=Redis:smembers(BLANK..'BLANK:ChekBotAdd')
fork,ideinpairs(Groups)do
listrep=Redis:smembers(BLANK.."BLANK:List:Manager"..ide.."")
ifk==1then
Get_Json=Get_Json..'"'..ide..'":{'
else
Get_Json=Get_Json..',"'..ide..'":{'
end
if#listrep>=5then
fork,vinpairs(listrep)do
ifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Gif"..v..ide)then
db="gif@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Gif"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Vico"..v..ide)then
db="Vico@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Vico"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..v..ide)then
db="Stekrs@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Text"..v..ide)then
db="Text@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Text"..v..ide)
db=string.gsub(db,'"','')
db=string.gsub(db,"'",'')
db=string.gsub(db,'*','')
db=string.gsub(db,'`','')
db=string.gsub(db,'{','')
db=string.gsub(db,'}','')
db=string.gsub(db,'\n','')
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Photo"..v..ide)then
db="Photo@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Photo"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Video"..v..ide)then
db="Video@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Video"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:File"..v..ide)then
db="File@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:File"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:Audio"..v..ide)then
db="Audio@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:Audio"..v..ide)
elseifRedis:get(BLANK.."BLANK:Add:Rd:Manager:video_note"..v..ide)then
db="video_note@"..Redis:get(BLANK.."BLANK:Add:Rd:Manager:video_note"..v..ide)
end
v=string.gsub(v,'"','')
v=string.gsub(v,"'",'')
Get_Json=Get_Json..'"'..v..'":"'..db..'",'
end
Get_Json=Get_Json..'"taha":"ok"'
end
Get_Json=Get_Json..'}'
end
Get_Json=Get_Json..'}}'
localFile=io.open('./ReplyGroups.json',"w")
File:write(Get_Json)
File:close()
returnLuaTele.sendDocument(msg_chat_id,msg_id,'./ReplyGroups.json','','md')
end
iftext=='رفعنسخهالردود'andmsg.reply_to_message_id~=0then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
localMessage_Reply=LuaTele.getMessage(msg.chat_id,msg.reply_to_message_id)
ifMessage_Reply.content.documentthen
localFile_Id=Message_Reply.content.document.document.remote.id
localName_File=Message_Reply.content.document.file_name
localFile=json:decode(https.request('https://api.telegram.org/bot'..Token..'/getfile?file_id='..File_Id))
localdownload_=download('https://api.telegram.org/file/bot'..Token..'/'..File.result.file_path,''..Name_File)
localGet_Info=io.open(download_,"r"):read('*a')
localReply_Groups=JSON.decode(Get_Info)
forGroupId,ListGroupinpairs(Reply_Groups.GroupsBotreply)do
ifListGroup.taha=="ok"then
fork,vinpairs(ListGroup)do
Redis:sadd(BLANK.."BLANK:List:Manager"..GroupId,k)
ifvandv:match('gif@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Gif"..k..GroupId,v:match('gif@(.*)'))
elseifvandv:match('Vico@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Vico"..k..GroupId,v:match('Vico@(.*)'))
elseifvandv:match('Stekrs@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..k..GroupId,v:match('Stekrs@(.*)'))
elseifvandv:match('Text@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Text"..k..GroupId,v:match('Text@(.*)'))
elseifvandv:match('Photo@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Photo"..k..GroupId,v:match('Photo@(.*)'))
elseifvandv:match('Video@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Video"..k..GroupId,v:match('Video@(.*)'))
elseifvandv:match('File@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:File"..k..GroupId,v:match('File@(.*)'))
elseifvandv:match('Audio@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:Audio"..k..GroupId,v:match('Audio@(.*)'))
elseifvandv:match('video_note@(.*)')then
Redis:set(BLANK.."BLANK:Add:Rd:Manager:video_note"..k..GroupId,v:match('video_note@(.*)'))
end
end
end
end
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙تماسترجاعردودالمجموعات*',"md",true)
end
end
iftextandtext:match("^تعينعددالاعضاء(%d+)$")then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
Redis:set(BLANK..'BLANK:Num:Add:Bot',text:match("تعينعددالاعضاء(%d+)$"))
LuaTele.sendText(msg_chat_id,msg_id,'*☆︙تمتعيينعدداعضاءتفعيلالبوتاكثرمن:'..text:match("تعينعددالاعضاء(%d+)$")..'عضو*',"md",true)
elseiftext=='الاحصائيات'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
LuaTele.sendText(msg_chat_id,msg_id,'*☆︙عدداحصائياتالبوتالكامله\n—————————\n☆︙عددالمجموعات:'..(Redis:scard(BLANK..'BLANK:ChekBotAdd')or0)..'\n☆︙عددالمشتركين:'..(Redis:scard(BLANK..'BLANK:Num:User:Pv')or0)..'*',"md",true)
end
iftext=='تفعيل'andmsg.Developersthen
ifmsg.can_be_deleted_for_all_users==falsethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآالبوتليسادمنفيالمجموعهيرجىترقيتهوتفعيلالصلاحياتله*","md",true)
end
localGet_Chat=LuaTele.getChat(msg_chat_id)
localInfo_Chats=LuaTele.getSupergroupFullInfo(msg_chat_id)
ifRedis:sismember(BLANK.."BLANK:ChekBotAdd",msg_chat_id)then
iftonumber(Info_Chats.member_count)<tonumber((Redis:get(BLANK..'BLANK:Num:Add:Bot')or0))andnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙عددالاعضاءقليللايمكنتفعيلالمجموعهيجبانيكوماكثرمن:'..Redis:get(BLANK..'BLANK:Num:Add:Bot'),"md",true)
end
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتفعيلهامسبقا*',"md",true)
else
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text='‹رفعالادمنيه›',data=msg.sender.user_id..'/addAdmins@'..msg_chat_id},{text='‹تفعيلالحمايه›',data=msg.sender.user_id..'/LockAllGroup@'..msg_chat_id},
},
{
{text='‹تفعيلالايدي›',data=msg.sender.user_id..'/'..'mute_IdPhoto'},
},
{
{text='-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.',url='https://t.me/C_T_V_blank'},
},
}
}
ifnotmsg.ControllerBotthen
localUserInfo=LuaTele.getUser(msg.sender.user_id)
forName_Userinstring.gmatch(UserInfo.first_name,"[^%s]+")do
UserInfo.first_name=Name_User
break
end
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text='-مغادرةالمجموعه',data='/leftgroup@'..msg_chat_id},
},
{
{text=Get_Chat.title,url=Info_Chats.invite_link.invite_link},
},
}
}
LuaTele.sendText(Sudo_Id,0,'*\n☆︙تمتفعيلمجموعهجديده\n☆︙منقامبتفعيلها:{*['..UserInfo.first_name..'](tg://user?id='..msg.sender.user_id..')*}\n☆︙معلوماتالمجموعه:\n☆︙عددالاعضاء:'..Info_Chats.member_count..'\n☆︙عددالادمنيه:'..Info_Chats.administrator_count..'\n☆︙عددالمطرودين:'..Info_Chats.banned_count..'\n🔕︙عددالمقيدين:'..Info_Chats.restricted_count..'*',"md",true,false,false,false,reply_markup)
end
Redis:sadd(BLANK.."BLANK:ChekBotAdd",msg_chat_id)
Redis:set(BLANK.."BLANK:Status:Id"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:Reply"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:ReplySudo"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:BanId"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:SetId"..msg_chat_id,true)
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتفعيلالمجموعه*','md',true,false,false,false,reply_markup)
end
end
iftext=='تفعيل'andnotmsg.Developersthen
ifmsg.can_be_deleted_for_all_users==falsethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآالبوتليسادمنفيالمجموعهيرجىترقيتهوتفعيلالصلاحياتله*","md",true)
end
localStatusMember=LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele
if(StatusMember=="chatMemberStatusCreator")then
localAddedBot=true
elseif(StatusMember=="chatMemberStatusAdministrator")then
localAddedBot=true
else
localAddedBot=false
end
ifAddedBot==falsethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذراانتهلستادمناومالكالمجموعه*","md",true)
end
ifnotRedis:get(BLANK.."BLANK:BotFree")then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙الوضعالخدميتمتعطيلهمنقبلمطورالبوت*","md",true)
end
localGet_Chat=LuaTele.getChat(msg_chat_id)
localInfo_Chats=LuaTele.getSupergroupFullInfo(msg_chat_id)
ifRedis:sismember(BLANK.."BLANK:ChekBotAdd",msg_chat_id)then
iftonumber(Info_Chats.member_count)<tonumber((Redis:get(BLANK..'BLANK:Num:Add:Bot')or0))andnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙عددالاعضاءقليللايمكنتفعيلالمجموعهيجبانيكوماكثرمن:'..Redis:get(BLANK..'BLANK:Num:Add:Bot'),"md",true)
end
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتفعيلهامسبقا*',"md",true)
else
ifnotmsg.ControllerBotthen
localUserInfo=LuaTele.getUser(msg.sender.user_id)
forName_Userinstring.gmatch(UserInfo.first_name,"[^%s]+")do
UserInfo.first_name=Name_User
break
end
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text='-مغادرةالمجموعه',data='/leftgroup@'..msg_chat_id},
},
{
{text=Get_Chat.title,url=Info_Chats.invite_link.invite_link},
},
}
}
LuaTele.sendText(Sudo_Id,0,'*\n☆︙تمتفعيلمجموعهجديده\n☆︙منقامبتفعيلها:{*['..UserInfo.first_name..'](tg://user?id='..msg.sender.user_id..')*}\n☆︙معلوماتالمجموعه:\n☆︙عددالاعضاء:'..Info_Chats.member_count..'\n☆︙عددالادمنيه:'..Info_Chats.administrator_count..'\n☆︙عددالمطرودين:'..Info_Chats.banned_count..'\n🔕︙عددالمقيدين:'..Info_Chats.restricted_count..'*',"md",true,false,false,false,reply_markup)
end
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text='‹رفعالادمنيه›',data=msg.sender.user_id..'/addAdmins@'..msg_chat_id},{text='‹تفعيلالحمايه›',data=msg.sender.user_id..'/LockAllGroup@'..msg_chat_id},
},
{
{text='‹تفعيلالايدي›',data=msg.sender.user_id..'/'..'mute_IdPhoto'},
},
{
{text='-𝙎𝙊𝙐𝙍𝘾𝙀𝘽𝙇𝘼𝙉𝙆.',url='https://t.me/C_T_V_blank'},
},
}
}
Redis:sadd(BLANK.."BLANK:ChekBotAdd",msg_chat_id)
Redis:set(BLANK.."BLANK:Status:Id"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:Reply"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:ReplySudo"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:BanId"..msg_chat_id,true);Redis:set(BLANK.."BLANK:Status:SetId"..msg_chat_id,true)
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتفعيلالمجموعه*','md',true,false,false,false,reply_markup)
end
end

iftext=='تعطيل'andmsg.Developersthen
localGet_Chat=LuaTele.getChat(msg_chat_id)
localInfo_Chats=LuaTele.getSupergroupFullInfo(msg_chat_id)
ifnotRedis:sismember(BLANK.."BLANK:ChekBotAdd",msg_chat_id)then
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتعطيلهامسبقا*',"md",true)
else
ifnotmsg.ControllerBotthen
localUserInfo=LuaTele.getUser(msg.sender.user_id)
forName_Userinstring.gmatch(UserInfo.first_name,"[^%s]+")do
UserInfo.first_name=Name_User
break
end
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text=Get_Chat.title,url=Info_Chats.invite_link.invite_link},
},
}
}
LuaTele.sendText(Sudo_Id,0,'*\n☆︙تمتعطيلمجموعهجديده\n☆︙منقامبتعطيلها:{*['..UserInfo.first_name..'](tg://user?id='..msg.sender.user_id..')*}\n☆︙معلوماتالمجموعه:\n☆︙عددالاعضاء:'..Info_Chats.member_count..'\n☆︙عددالادمنيه:'..Info_Chats.administrator_count..'\n☆︙عددالمطرودين:'..Info_Chats.banned_count..'\n🔕︙عددالمقيدين:'..Info_Chats.restricted_count..'*',"md",true,false,false,false,reply_markup)
end
Redis:srem(BLANK.."BLANK:ChekBotAdd",msg_chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتعطيلهابنجاح*','md',true)
end
end
iftext=='تعطيل'andnotmsg.Developersthen
localStatusMember=LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele
if(StatusMember=="chatMemberStatusCreator")then
localAddedBot=true
elseif(StatusMember=="chatMemberStatusAdministrator")then
localAddedBot=true
else
localAddedBot=false
end
ifAddedBot==falsethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذراانتهلستادمناومالكالمجموعه*","md",true)
end
localGet_Chat=LuaTele.getChat(msg_chat_id)
localInfo_Chats=LuaTele.getSupergroupFullInfo(msg_chat_id)
ifnotRedis:sismember(BLANK.."BLANK:ChekBotAdd",msg_chat_id)then
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتعطيلهامسبقا*',"md",true)
else
ifnotmsg.ControllerBotthen
localUserInfo=LuaTele.getUser(msg.sender.user_id)
forName_Userinstring.gmatch(UserInfo.first_name,"[^%s]+")do
UserInfo.first_name=Name_User
break
end
localreply_markup=LuaTele.replyMarkup{
type='inline',
data={
{
{text=Get_Chat.title,url=Info_Chats.invite_link.invite_link},
},
}
}
aLuaTele.sendText(Sudo_Id,0,'*\n☆︙تمتعطيلمجموعهجديده\n☆︙منقامبتعطيلها:{*['..UserInfo.first_name..'](tg://user?id='..msg.sender.user_id..')*}\n☆︙معلوماتالمجموعه:\n☆︙عددالاعضاء:'..Info_Chats.member_count..'\n☆︙عددالادمنيه:'..Info_Chats.administrator_count..'\n☆︙عددالمطرودين:'..Info_Chats.banned_count..'\n☆︙عددالمقيدين:'..Info_Chats.restricted_count..'*',"md",true,false,false,false,reply_markup)
end
Redis:srem(BLANK.."BLANK:ChekBotAdd",msg_chat_id)
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙المجموعه:{*['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')*}\n☆︙تمتعطيلهابنجاح*','md',true)
end
end
ifchat_type(msg.chat_id)=="GroupBot"andRedis:sismember(BLANK.."BLANK:ChekBotAdd",msg_chat_id)then
Redis:incr(BLANK..'BLANK:Num:Message:User'..msg.chat_id..':'..msg.sender.user_id)
iftext=="ايدي"andmsg.reply_to_message_id==0then
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:get(BLANK.."BLANK:Status:Id"..msg_chat_id)then
returnfalse
end
localUserInfo=LuaTele.getUser(msg.sender.user_id)
localphoto=LuaTele.getUserProfilePhotos(msg.sender.user_id)
localUserId=msg.sender.user_id
localRinkBot=msg.Name_Controller
localTotalMsg=Redis:get(BLANK..'BLANK:Num:Message:User'..msg_chat_id..':'..msg.sender.user_id)or0
localTotalPhoto=photo.total_countor0
localTotalEdit=Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg_chat_id..msg.sender.user_id)or0
localTotalMsgT=Total_message(TotalMsg)
localNumberGames=Redis:get(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id)or0
localNumAdd=Redis:get(BLANK.."BLANK:Num:Add:Memp"..msg.chat_id..":"..msg.sender.user_id)or0
localTexting={'ملاكوناسيكبكروبنه??',"حلغوموالله☹️","اطلقصوره🐼❤️","كيككوالله🥺","لازكبيهاغيرهاعاد😒",}
localDescription=Texting[math.random(#Texting)]
ifUserInfo.usernamethen
UserInfousername='@'..UserInfo.username..''
else
UserInfousername='لايوجد'
end
Get_Is_Id=Redis:get(BLANK.."BLANK:Set:Id:Groups")orRedis:get(BLANK.."BLANK:Set:Id:Group"..msg_chat_id)
ifRedis:get(BLANK.."BLANK:Status:IdPhoto"..msg_chat_id)then
ifGet_Is_Idthen
localGet_Is_Id=Get_Is_Id:gsub('#AddMem',NumAdd)
localGet_Is_Id=Get_Is_Id:gsub('#id',msg.sender.user_id)
localGet_Is_Id=Get_Is_Id:gsub('#username',UserInfousername)
localGet_Is_Id=Get_Is_Id:gsub('#msgs',TotalMsg)
localGet_Is_Id=Get_Is_Id:gsub('#edit',TotalEdit)
localGet_Is_Id=Get_Is_Id:gsub('#stast',RinkBot)
localGet_Is_Id=Get_Is_Id:gsub('#auto',TotalMsgT)
localGet_Is_Id=Get_Is_Id:gsub('#Description',Description)
localGet_Is_Id=Get_Is_Id:gsub('#game',NumberGames)
localGet_Is_Id=Get_Is_Id:gsub('#photos',TotalPhoto)
ifphoto.total_count>0then
returnLuaTele.sendPhoto(msg.chat_id,msg.id,photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id,Get_Is_Id)
else
returnLuaTele.sendText(msg_chat_id,msg_id,Get_Is_Id,"md",true)
end
else
ifphoto.total_count>0then
returnLuaTele.sendPhoto(msg.chat_id,msg.id,photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id,
'\n*☆︙'..Description..
'\n☆︙ايديك:'..UserId..
'\n☆︙معرفك:'..UserInfousername..
'\n☆︙رتبتك:'..RinkBot..
'\n☆︙صورك:'..TotalPhoto..
'\n☆︙رسائلك:'..TotalMsg..
'\n☆︙تعديلاتك:'..TotalEdit..
'\n☆︙تفاعلك:'..TotalMsgT..
'*',"md")
else
returnLuaTele.sendText(msg_chat_id,msg_id,
'\n*☆︙ايديك:'..UserId..
'\n☆︙معرفك:'..UserInfousername..
'\n☆︙رتبتك:'..RinkBot..
'\n☆︙رسائلك:'..TotalMsg..
'\n☆︙تعديلاتك:'..TotalEdit..
'\n☆︙تفاعلك:'..TotalMsgT..
'*',"md",true)
end
end
else
ifGet_Is_Idthen
localGet_Is_Id=Get_Is_Id:gsub('#AddMem',NumAdd)
localGet_Is_Id=Get_Is_Id:gsub('#id',msg.sender.user_id)
localGet_Is_Id=Get_Is_Id:gsub('#username',UserInfousername)
localGet_Is_Id=Get_Is_Id:gsub('#msgs',TotalMsg)
localGet_Is_Id=Get_Is_Id:gsub('#edit',TotalEdit)
localGet_Is_Id=Get_Is_Id:gsub('#stast',RinkBot)
localGet_Is_Id=Get_Is_Id:gsub('#auto',TotalMsgT)
localGet_Is_Id=Get_Is_Id:gsub('#Description',Description)
localGet_Is_Id=Get_Is_Id:gsub('#game',NumberGames)
localGet_Is_Id=Get_Is_Id:gsub('#photos',TotalPhoto)
returnLuaTele.sendText(msg_chat_id,msg_id,'['..Get_Is_Id..']',"md",true)
else
returnLuaTele.sendText(msg_chat_id,msg_id,
'\n*☆︙ايديك:'..UserId..
'\n☆︙معرفك:'..UserInfousername..
'\n☆︙رتبتك:'..RinkBot..
'\n☆︙رسائلك:'..TotalMsg..
'\n☆︙تعديلاتك:'..TotalEdit..
'\n☆︙تفاعلك:'..TotalMsgT..
'*',"md",true)
end
end
end
iftext=='ايدي'ortext=='كشف'andmsg.reply_to_message_id~=0then
localMessage_Reply=LuaTele.getMessage(msg.chat_id,msg.reply_to_message_id)
localUserInfo=LuaTele.getUser(Message_Reply.sender.user_id)
ifUserInfo.usernamethen
UserInfousername='@'..UserInfo.username..''
else
UserInfousername='لايوجد'
end
localUserId=Message_Reply.sender.user_id
localRinkBot=Controller(msg_chat_id,Message_Reply.sender.user_id)
localTotalMsg=Redis:get(BLANK..'BLANK:Num:Message:User'..msg_chat_id..':'..Message_Reply.sender.user_id)or0
localTotalEdit=Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg_chat_id..Message_Reply.sender.user_id)or0
localTotalMsgT=Total_message(TotalMsg)
returnLuaTele.sendText(msg_chat_id,msg_id,
'\n*☆︙ايديه:'..UserId..
'\n☆︙معرفه:'..UserInfousername..
'\n☆‍︙رتبته:'..RinkBot..
'\n☆︙رسائله:'..TotalMsg..
'\n☆︙تعديلاته:'..TotalEdit..
'\n☆︙تفاعله:'..TotalMsgT..
'*',"md",true)
end
iftextandtext:match('^ايدي@(%S+)$')ortextandtext:match('^كشف@(%S+)$')then
localUserName=text:match('^ايدي@(%S+)$')ortext:match('^كشف@(%S+)$')
localUserId_Info=LuaTele.searchPublicChat(UserName)
ifnotUserId_Info.idthen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلايوجدحساببهاذاالمعرف","md",true)
end
ifUserId_Info.type.is_channel==truethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلاتستطيعاستخداممعرفقناةاوكروب","md",true)
end
ifUserNameandUserName:match('(%S+)[Bb][Oo][Tt]')then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلاتستطيعاستخداممعرفالبوت","md",true)
end
localUserId=UserId_Info.id
localRinkBot=Controller(msg_chat_id,UserId_Info.id)
localTotalMsg=Redis:get(BLANK..'BLANK:Num:Message:User'..msg_chat_id..':'..UserId_Info.id)or0
localTotalEdit=Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg_chat_id..UserId_Info.id)or0
localTotalMsgT=Total_message(TotalMsg)
returnLuaTele.sendText(msg_chat_id,msg_id,
'\n*☆︙ايديه:'..UserId..
'\n☆︙معرفه:@'..UserName..
'\n☆‍︙رتبته:'..RinkBot..
'\n☆︙رسائله:'..TotalMsg..
'\n☆︙تعديلاته:'..TotalEdit..
'\n☆︙تفاعله:'..TotalMsgT..
'*',"md",true)
end
iftext=='رتبتي'then
returnLuaTele.sendText(msg_chat_id,msg_id,'\n☆︙رتبتكهي:'..msg.Name_Controller,"md",true)
end
iftext=='معلوماتي'ortext=='موقعي'then
localUserInfo=LuaTele.getUser(msg.sender.user_id)
localStatusMember=LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele
if(StatusMember=="chatMemberStatusCreator")then
StatusMemberChat='مالكالمجموعه'
elseif(StatusMember=="chatMemberStatusAdministrator")then
StatusMemberChat='مشرفالمجموعه'
else
StatusMemberChat='عظوفيالمجموعه'
end
localUserId=msg.sender.user_id
localRinkBot=msg.Name_Controller
localTotalMsg=Redis:get(BLANK..'BLANK:Num:Message:User'..msg_chat_id..':'..msg.sender.user_id)or0
localTotalEdit=Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg_chat_id..msg.sender.user_id)or0
localTotalMsgT=Total_message(TotalMsg)
ifUserInfo.usernamethen
UserInfousername='@'..UserInfo.username..''
else
UserInfousername='لايوجد'
end
ifStatusMemberChat=='مشرفالمجموعه'then
localGetMemberStatus=LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status
ifGetMemberStatus.can_change_infothen
change_info='❬✔️❭'elsechange_info='❬❌❭'
end
ifGetMemberStatus.can_delete_messagesthen
delete_messages='❬✔️❭'elsedelete_messages='❬❌❭'
end
ifGetMemberStatus.can_invite_usersthen
invite_users='❬✔️❭'elseinvite_users='❬❌❭'
end
ifGetMemberStatus.can_pin_messagesthen
pin_messages='❬✔️❭'elsepin_messages='❬❌❭'
end
ifGetMemberStatus.can_restrict_membersthen
restrict_members='❬✔️❭'elserestrict_members='❬❌❭'
end
ifGetMemberStatus.can_promote_membersthen
promote='❬✔️❭'elsepromote='❬❌❭'
end
PermissionsUser='*\n☆︙صلاحياتالمستخدم:\n—————————'..'\n☆︙تغييرالمعلومات:'..change_info..'\n☆︙تثبيتالرسائل:'..pin_messages..'\n☆︙اضافهمستخدمين:'..invite_users..'\n☆︙مسحالرسائل:'..delete_messages..'\n☆︙حظرالمستخدمين:'..restrict_members..'\n☆︙اضافهالمشرفين:'..promote..'\n\n*'
end
returnLuaTele.sendText(msg_chat_id,msg_id,
'\n*☆︙ايديك:'..UserId..
'\n☆︙معرفك:'..UserInfousername..
'\n☆︙رتبتك:'..RinkBot..
'\n☆︙رتبتهالمجموعه:'..StatusMemberChat..
'\n☆︙رسائلك:'..TotalMsg..
'\n☆︙تعديلاتك:'..TotalEdit..
'\n☆︙تفاعلك:'..TotalMsgT..
'*'..(PermissionsUseror''),"md",true)
end
iftext=='كشفالبوت'then
ifnotmsg.Managersthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(6)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
localStatusMember=LuaTele.getChatMember(msg_chat_id,BLANK).status.luatele
if(StatusMember~="chatMemberStatusAdministrator")then
returnLuaTele.sendText(msg_chat_id,msg_id,'☆︙البوتعضوفيالمجموعه',"md",true)
end
localGetMemberStatus=LuaTele.getChatMember(msg_chat_id,BLANK).status
ifGetMemberStatus.can_change_infothen
change_info='❬✔️❭'elsechange_info='❬❌❭'
end
ifGetMemberStatus.can_delete_messagesthen
delete_messages='❬✔️❭'elsedelete_messages='❬❌❭'
end
ifGetMemberStatus.can_invite_usersthen
invite_users='❬✔️❭'elseinvite_users='❬❌❭'
end
ifGetMemberStatus.can_pin_messagesthen
pin_messages='❬✔️❭'elsepin_messages='❬❌❭'
end
ifGetMemberStatus.can_restrict_membersthen
restrict_members='❬✔️❭'elserestrict_members='❬❌❭'
end
ifGetMemberStatus.can_promote_membersthen
promote='❬✔️❭'elsepromote='❬❌❭'
end
PermissionsUser='*\n☆︙صلاحياتالبوتفيالمجموعه:\n—————————'..'\n☆︙تغييرالمعلومات:'..change_info..'\n☆︙تثبيتالرسائل:'..pin_messages..'\n☆︙اضافهمستخدمين:'..invite_users..'\n☆︙مسحالرسائل:'..delete_messages..'\n☆︙حظرالمستخدمين:'..restrict_members..'\n☆︙اضافهالمشرفين:'..promote..'\n\n*'
returnLuaTele.sendText(msg_chat_id,msg_id,PermissionsUser,"md",true)
end

iftextandtext:match('^تنظيف(%d+)$')then
localNumMessage=text:match('^تنظيف(%d+)$')
ifnotmsg.Managersthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(6)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifmsg.can_be_deleted_for_all_users==falsethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآالبوتليسادمنفيالمجموعهيرجىترقيتهوتفعيلالصلاحياتله*","md",true)
end
ifGetInfoBot(msg).Delmsg==falsethen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوتليسلديهصلاحيهحذفالرسائل*',"md",true)
end
iftonumber(NumMessage)>1000then
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙العدداكثرمن1000لاتستطيعالحذف',"md",true)
end
localMessage=msg.id
fori=1,tonumber(NumMessage)do
localdeleteMessages=LuaTele.deleteMessages(msg.chat_id,{[1]=Message})
var(deleteMessages)
Message=Message-1048576
end
LuaTele.sendText(msg_chat_id,msg_id,"☆︙تمتنظيف-"..NumMessage..'رساله','md')
end

iftextandtext:match('^تنزيل(.*)@(%S+)$')then
localUserName={text:match('^تنزيل(.*)@(%S+)$')}
localUserId_Info=LuaTele.searchPublicChat(UserName[2])
ifnotUserId_Info.idthen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلايوجدحساببهاذاالمعرف","md",true)
end
ifUserId_Info.type.is_channel==truethen
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلاتستطيعاستخداممعرفقناةاوكروب","md",true)
end
ifUserNameandUserName[2]:match('(%S+)[Bb][Oo][Tt]')then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلاتستطيعاستخداممعرفالبوت","md",true)
end
ifUserName[1]=="مطورثانوي"then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمطورثانويمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:DevelopersQ:Groups",UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمطورثانوي").Reply,"md",true)
end
end
ifUserName[1]=="مطور"then
ifnotmsg.DevelopersQthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(2)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:Developers:Groups",UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمطورمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:Developers:Groups",UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمطور").Reply,"md",true)
end
end
ifUserName[1]=="منشئاساسي"then
ifLuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele~="chatMemberStatusCreator"andnotmsg.Developersthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(2)..',مالكالكروب}*',"md",true)
end
ifnotRedis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنشئاساسيمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنشئاساسي").Reply,"md",true)
end
end
ifUserName[1]=="منشئاساسي"then
ifnotmsg.Developersthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(3)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنشئاساسيمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنشئاساسي").Reply,"md",true)
end
end
ifUserName[1]=="منشئ"then
ifnotmsg.TheBasicsthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(4)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالمنشئينمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالمنشئين").Reply,"md",true)
end
end
ifUserName[1]=="مدير"then
ifnotmsg.Originatorsthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(5)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالمدراءمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالمدراء").Reply,"md",true)
end
end
ifUserName[1]=="ادمن"then
ifnotmsg.Managersthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(6)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالادمنيهمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالادمنيه").Reply,"md",true)
end
end
ifUserName[1]=="مميز"then
ifnotmsg.Addictivethen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(7)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناةالبوتلاستخذامالاوامر*',"md",false,false,false,false,reply_markup)
end
ifnotRedis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId_Info.id)then
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالمميزينمسبقا").Reply,"md",true)
else
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId_Info.id)
returnLuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تمتنزيلهمنالمميزبن").Reply,"md",true)
end
end
end
iftextandtext:match("^تنزيل(.*)$")andmsg.reply_to_message_id~=0then
localTextMsg=text:match("^تنزيل(.*)$")
localMessage_Reply=LuaTele.getMessage(msg.chat_id,msg.reply_to_message_id)
localUserInfo=LuaTele.getUser(Message_Reply.sender.user_id)
ifUserInfo.message=="InvaliduserID"then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآتستطيعفقطاستخدامالامرعلىالمستخدمين","md",true)
end
ifUserInfoandUserInfo.typeandUserInfo.type.luatele=="userTypeBot"then
returnLuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآلاتستطيعاستخدامالامرعلىالبوت","md",true)
end
ifTextMsg=='مطورثانوي'then
ifnotmsg.ControllerBotthen
returnLuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذاالامريخص{'..Controller_Num(1)..'}*',"md",true)
end
ifChannelJoin(msg)==falsethen
localreply_markup=LuaTele.replyMarkup{type='inline',data={{{text='اضغطللاشتراك',url='t.me/'..Redis:get(BLANK..'BLANK:Channel:Join')},},}}
returnLuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليكالاشتراكفيقناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله مطور ثانوي مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:DevelopersQ:Groups",Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله مطور ثانوي").Reply,"md",true)  
end
end
if TextMsg == 'مطور' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله مطور مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله مطور ").Reply,"md",true)  
end
end
if TextMsg == "منشئ اساسي" then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" and not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' , مالك الكروب }* ',"md",true)  
end
if not Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله منشئ اساسي ").Reply,"md",true)  
end
end
if TextMsg == "منشئ اساسي" then
if not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله منشئ اساسي ").Reply,"md",true)  
end
end
if TextMsg == "منشئ" then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المنشئين مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المنشئين ").Reply,"md",true)  
end
end
if TextMsg == "مدير" then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المدراء مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المدراء ").Reply,"md",true)  
end
end
if TextMsg == "ادمن" then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من الادمنيه مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من الادمنيه ").Reply,"md",true)  
end
end
if TextMsg == "مميز" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المميزين مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المميزبن ").Reply,"md",true)  
end
end
end


if text and text:match('^تنزيل (.*) (%d+)$') then
local UserId = {text:match('^تنزيل (.*) (%d+)$')}
local UserInfo = LuaTele.getUser(UserId[2])
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if UserId[1] == 'مطور ثانوي' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم تنزيله مطور ثانوي مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:DevelopersQ:Groups",UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم تنزيله مطور ثانوي").Reply,"md",true)  
end
end
if UserId[1] == 'مطور' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم تنزيله مطور مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Developers:Groups",UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم تنزيله مطور ").Reply,"md",true)  
end
end
if UserId[1] == "منشئ اساسي" then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" and not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' , مالك الكروب }* ',"md",true)  
end
if not Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله منشئ اساسي ").Reply,"md",true)  
end
end
if UserId[1] == "منشئ اساسي" then
if not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله منشئ اساسي ").Reply,"md",true)  
end
end
if UserId[1] == "منشئ" then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من المنشئين مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من المنشئين ").Reply,"md",true)  
end
end
if UserId[1] == "مدير" then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من المدراء مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من المدراء ").Reply,"md",true)  
end
end
if UserId[1] == "ادمن" then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من الادمنيه مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من الادمنيه ").Reply,"md",true)  
end
end
if UserId[1] == "مميز" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من المميزين مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم تنزيله من المميزبن ").Reply,"md",true)  
end
end
end
if text and text:match('^رفع (.*) @(%S+)$') then
local UserName = {text:match('^رفع (.*) @(%S+)$')}
local UserId_Info = LuaTele.searchPublicChat(UserName[2])
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName[2]:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if UserName[1] == "مطور ثانوي" then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مطور ثانوي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:DevelopersQ:Groups",UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مطور ثانوي").Reply,"md",true)  
end
end
if UserName[1] == "مطور" then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مطور مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Developers:Groups",UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مطور ").Reply,"md",true)  
end
end
if UserName[1] == "منشئ اساسي" then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" and not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' , مالك الكروب }* ',"md",true)  
end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته منشئ اساسي ").Reply,"md",true)  
end
end
if UserName[1] == "منشئ اساسي" then
if not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته منشئ اساسي ").Reply,"md",true)  
end
end
if UserName[1] == "منشئ" then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته منشئ  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته منشئ  ").Reply,"md",true)  
end
end
if UserName[1] == "مدير" then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مدير  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مدير  ").Reply,"md",true)  
end
end
if UserName[1] == "ادمن" then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:SetId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الرفع) من قبل المنشئين","md",true)
end 
if Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته ادمن  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته ادمن  ").Reply,"md",true)  
end
end
if UserName[1] == "مميز" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:SetId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الرفع) من قبل المنشئين","md",true)
end 
if Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مميز  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم ترقيته مميز  ").Reply,"md",true)  
end
end
end
if text and text:match("^رفع (.*)$") and msg.reply_to_message_id ~= 0 then
local TextMsg = text:match("^رفع (.*)$")
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if TextMsg == 'مطور ثانوي' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مطور ثانوي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:DevelopersQ:Groups",Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مطور ثانوي").Reply,"md",true)  
end
end
if TextMsg == 'مطور' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مطور مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مطور ").Reply,"md",true)  
end
end
if TextMsg == "منشئ اساسي" then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" and not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' , مالك الكروب }* ',"md",true)  
end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته منشئ اساسي ").Reply,"md",true)  
end
end
if TextMsg == "منشئ اساسي" then
if not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته منشئ اساسي ").Reply,"md",true)  
end
end
if TextMsg == "منشئ" then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته منشئ  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Originators:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته منشئ  ").Reply,"md",true)  
end
end
if TextMsg == "مدير" then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مدير  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Managers:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مدير  ").Reply,"md",true)  
end
end
if TextMsg == "ادمن" then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:SetId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الرفع) من قبل المنشئين","md",true)
end 
if Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته ادمن  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Addictive:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته ادمن  ").Reply,"md",true)  
end
end
if TextMsg == "مميز" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:SetId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الرفع) من قبل المنشئين","md",true)
end 
if Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مميز  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم ترقيته مميز  ").Reply,"md",true)  
end
end
end
if text and text:match('^رفع (.*) (%d+)$') then
local UserId = {text:match('^رفع (.*) (%d+)$')}
local UserInfo = LuaTele.getUser(UserId[2])
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if UserId[1] == 'مطور ثانوي' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:DevelopersQ:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم ترقيته مطور ثانوي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:DevelopersQ:Groups",UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم ترقيته مطور ثانوي").Reply,"md",true)  
end
end
if UserId[1] == 'مطور' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم ترقيته مطور مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Developers:Groups",UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم ترقيته مطور ").Reply,"md",true)  
end
end
if UserId[1] == "مالك" then
if not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 'https://t.me/C_T_V_blank'}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:TheBasicsQ:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته مالك مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasicsQ:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته مالك ").Reply,"md",true)  
end
end
if UserId[1] == "منشئ اساسي" then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" and not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته منشئ اساسي ").Reply,"md",true)  
end
end
if UserId[1] == "منشئ اساسي" then
if not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(3)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته منشئ اساسي مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته منشئ اساسي ").Reply,"md",true)  
end
end
if UserId[1] == "منشئ" then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته منشئ  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Originators:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته منشئ  ").Reply,"md",true)  
end
end
if UserId[1] == "مدير" then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته مدير  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Managers:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته مدير  ").Reply,"md",true)  
end
end
if UserId[1] == "ادمن" then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:SetId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الرفع) من قبل المنشئين","md",true)
end 
if Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته ادمن  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Addictive:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته ادمن  ").Reply,"md",true)  
end
end
if UserId[1] == "مميز" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:SetId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الرفع) من قبل المنشئين","md",true)
end 
if Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId[2]) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته مميز  مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:Distinguished:Group"..msg_chat_id,UserId[2]) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[2],"☆︙تم ترقيته مميز  ").Reply,"md",true)  
end
end
end
if text and text:match("^تغير رد المطور (.*)$") then
local Teext = text:match("^تغير رد المطور (.*)$") 
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK:Developer:Bot:Reply"..msg.chat_id,Teext)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد المطور الى :"..Teext)
elseif text and text:match("^تغير رد المنشئ الاساسي (.*)$") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Teext = text:match("^تغير رد المنشئ الاساسي (.*)$") 
Redis:set(BLANK.."BLANK:President:Group:Reply"..msg.chat_id,Teext)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد المنشئ الاساسي الى :"..Teext)
elseif text and text:match("^تغير رد المنشئ (.*)$") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Teext = text:match("^تغير رد المنشئ (.*)$") 
Redis:set(BLANK.."BLANK:Constructor:Group:Reply"..msg.chat_id,Teext)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد المنشئ الى :"..Teext)
elseif text and text:match("^تغير رد المدير (.*)$") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Teext = text:match("^تغير رد المدير (.*)$") 
Redis:set(BLANK.."BLANK:Manager:Group:Reply"..msg.chat_id,Teext) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد المدير الى :"..Teext)
elseif text and text:match("^تغير رد الادمن (.*)$") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Teext = text:match("^تغير رد الادمن (.*)$") 
Redis:set(BLANK.."BLANK:Admin:Group:Reply"..msg.chat_id,Teext)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد الادمن الى :"..Teext)
elseif text and text:match("^تغير رد المميز (.*)$") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Teext = text:match("^تغير رد المميز (.*)$") 
Redis:set(BLANK.."BLANK:Vip:Group:Reply"..msg.chat_id,Teext)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد المميز الى :"..Teext)
elseif text and text:match("^تغير رد العضو (.*)$") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local Teext = text:match("^تغير رد العضو (.*)$") 
Redis:set(BLANK.."BLANK:Mempar:Group:Reply"..msg.chat_id,Teext)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ تم تغير رد العضو الى :"..Teext)
elseif text == 'حذف رد المطور' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Developer:Bot:Reply"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حدف رد المطور")
elseif text == 'حذف رد المنشئ الاساسي' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:President:Group:Reply"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف رد المنشئ الاساسي ")
elseif text == 'حذف رد المنشئ' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Constructor:Group:Reply"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف رد المنشئ ")
elseif text == 'حذف رد المدير' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Manager:Group:Reply"..msg.chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف رد المدير ")
elseif text == 'حذف رد الادمن' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Admin:Group:Reply"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف رد الادمن ")
elseif text == 'حذف رد المميز' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Vip:Group:Reply"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف رد المميز")
elseif text == 'حذف رد العضو' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Mempar:Group:Reply"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف رد العضو")
end
if text == 'المطورين الثانويين' or text == 'المطورين الثانوين' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:DevelopersQ:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه مطورين الثانويين \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المطورين الثانويين', data = msg.sender.user_id..'/DevelopersQ'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المطورين' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Developers:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه مطورين البوت \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المطورين', data = msg.sender.user_id..'/Developers'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المنشئين الاساسيين' then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" or not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:TheBasics:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد منشئين اساسيين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المنشئين الاساسيين \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المنشئين الاساسيين', data = msg.sender.user_id..'/TheBasics'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المنشئين' then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Originators:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد منشئين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المنشئين  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المنشئين', data = msg.sender.user_id..'/Originators'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المدراء' then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Managers:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مدراء حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المدراء  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المدراء', data = msg.sender.user_id..'/Managers'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'الادمنيه' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Addictive:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد ادمنيه حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه الادمنيه  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح الادمنيه', data = msg.sender.user_id..'/Addictive'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المميزين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Distinguished:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مميزين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المميزين  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المميزين', data = msg.sender.user_id..'/DelDistinguished'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المحظورين عام' or text == 'قائمه العام' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:BanAll:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد محظورين عام حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المحظورين عام  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المحظورين عام', data = msg.sender.user_id..'/BanAll'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المحظورين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:BanGroup:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد محظورين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المحظورين  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المحظورين', data = msg.sender.user_id..'/BanGroup'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المكتومين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مكتومين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المكتومين  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المكتومين', data = msg.sender.user_id..'/SilentGroupGroup'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text and text:match("^تفعيل (.*)$") and msg.reply_to_message_id == 0 then
local TextMsg = text:match("^تفعيل (.*)$")
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if TextMsg == 'الرابط' then
Redis:set(BLANK.."BLANK:Status:Link"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الرابط ","md",true)
end
if TextMsg == 'الترحيب' then
Redis:set(BLANK.."BLANK:Status:Welcome"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الترحيب ","md",true)
end
if TextMsg == 'الايدي' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Status:Id"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الايدي ","md",true)
end
if TextMsg == 'الايدي بالصوره' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Status:IdPhoto"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الايدي بالصوره ","md",true)
end
if TextMsg == 'ردود المدير' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Status:Reply"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل ردود المدير ","md",true)
end
if TextMsg == 'ردود المطور' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Status:ReplySudo"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل ردود المطور ","md",true)
end
if TextMsg == 'الحظر' or TextMsg == 'الطرد' or TextMsg == 'التقييد' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Status:BanId"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الحظر , الطرد , التقييد","md",true)
end
if TextMsg == 'الرفع' then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Status:SetId"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الرفع ","md",true)
end
if TextMsg == 'الالعاب' then
Redis:set(BLANK.."BLANK:Status:Games"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل الالعاب ","md",true)
end
if TextMsg == 'اطردني' then
Redis:set(BLANK.."BLANK:Status:KickMe"..msg_chat_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل اطردني ","md",true)
end
if TextMsg == 'البوت الخدمي' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:BotFree",true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل البوت الخدمي ","md",true)
end
if TextMsg == 'التواصل' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:TwaslBot",true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل التواصل داخل البوت ","md",true)
end

end

if text and text:match("^(.*)$") then
if Redis:get(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "true" then
Redis:set(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id, "true1")
Redis:set(BLANK.."BLANK1:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id, text)
Redis:sadd(BLANK.."BLANK1:List:Rd:Sudo"..msg.chat_id, text)
return  LuaTele.sendText(msg_chat_id,msg_id, '\nارسل لي الكلمه الان ') 
end
end
if text and text:match("^(.*)$") then
if Redis:get(BLANK.."BLANK1:Set:On"..msg.sender.user_id..":"..msg.chat_id) == "true" then
Redis:del(BLANK..'BLANK1:Add:Rd:Sudo:Text'..text..msg.chat_id)
Redis:del(BLANK..'BLANK1:Add:Rd:Sudo:Text1'..text..msg.chat_id)
Redis:del(BLANK..'BLANK1:Add:Rd:Sudo:Text2'..text..msg.chat_id)
Redis:del(BLANK.."BLANK1:Set:On"..msg.sender.user_id..":"..msg.chat_id)
Redis:srem(BLANK.."BLANK1:List:Rd:Sudo"..msg.chat_id, text)
return  LuaTele.sendText(msg_chat_id,msg_id,"تم حذف الرد من ردود المتعدده")
end
end
if text == ("مسح الردود المتعدده") then    
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local list = Redis:smembers(BLANK.."BLANK1:List:Rd:Sudo"..msg.chat_id)
for k,v in pairs(list) do  
Redis:del(BLANK.."BLANK1:Add:Rd:Sudo:Text"..v..msg.chat_id) 
Redis:del(BLANK.."BLANK1:Add:Rd:Sudo:Text1"..v..msg.chat_id) 
Redis:del(BLANK.."BLANK1:Add:Rd:Sudo:Text2"..v..msg.chat_id) 
Redis:del(BLANK.."BLANK1:List:Rd:Sudo"..msg.chat_id)
end
 LuaTele.sendText(msg_chat_id,msg_id,"تم حذف ردود المتعدده")
end
if text == ("الردود المتعدده") then    
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
local list = Redis:smembers(BLANK.."BLANK1:List:Rd:Sudo"..msg.chat_id)
text = "\nقائمة ردود المتعدده \n━━━━━━━━\n"
for k,v in pairs(list) do
db = "رساله "
text = text..""..k.." => {"..v.."} => {"..db.."}\n"
end
if #list == 0 then
text = "لا توجد ردود متعدده"
end
 LuaTele.sendText(msg_chat_id,msg_id,"["..text.."]")
end
if text == "اضف رد متعدد" then    
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,true)
return  LuaTele.sendText(msg_chat_id,msg_id,"ارسل الرد الذي اريد اضافته")
end
if text == "حذف رد متعدد" then    
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK1:Set:On"..msg.sender.user_id..":"..msg.chat_id,true)
return  LuaTele.sendText(msg_chat_id,msg_id,"ارسل الان الكلمه لحذفها ")
end
if text then  
local test = Redis:get(BLANK.."BLANK1:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id)
if Redis:get(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "true1" then
Redis:set(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(BLANK.."BLANK1:Add:Rd:Sudo:Text"..test..msg.chat_id, text)  
end  
 LuaTele.sendText(msg_chat_id,msg_id,"تم حفظ الرد الاول ارسل الرد الثاني")
return false  
end  
end
if text then  
local test = Redis:get(BLANK.."BLANK1:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id)
if Redis:get(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "rd1" then
Redis:set(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(BLANK.."BLANK1:Add:Rd:Sudo:Text1"..test..msg.chat_id, text)  
end  
 LuaTele.sendText(msg_chat_id,msg_id,"تم حفظ الرد الثاني ارسل الرد الثالث")
return false  
end  
end
if text then  
local test = Redis:get(BLANK.."BLANK1:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id)
if Redis:get(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "rd2" then
Redis:set(BLANK.."BLANK1:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(BLANK.."BLANK1:Add:Rd:Sudo:Text2"..test..msg.chat_id, text)  
end  
 LuaTele.sendText(msg_chat_id,msg_id,"تم حفظ الرد")
return false  
end  
end
if text then
local Text = Redis:get(BLANK.."BLANK1:Add:Rd:Sudo:Text"..text..msg.chat_id)   
local Text1 = Redis:get(BLANK.."BLANK1:Add:Rd:Sudo:Text1"..text..msg.chat_id)   
local Text2 = Redis:get(BLANK.."BLANK1:Add:Rd:Sudo:Text2"..text..msg.chat_id)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
 LuaTele.sendText(msg_chat_id,msg_id,texting[Textes])
end
end
if text and text:match("^(.*)$") then
if Redis:get(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "true" then
 LuaTele.sendText(msg_chat_id,msg_id, '\nارسل لي الكلمه الان ')
Redis:set(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id, "true1")
Redis:set(BLANK.."BLANK11:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id, text)
Redis:sadd(BLANK.."BLANK11:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if Redis:get(BLANK.."BLANK11:Set:On"..msg.sender.user_id..":"..msg.chat_id) == "true" then
 LuaTele.sendText(msg_chat_id,msg_id,"تم حذف الرد من ردود المتعدده")
Redis:del(BLANK..'BLANK11:Add:Rd:Sudo:Text'..text)
Redis:del(BLANK..'BLANK11:Add:Rd:Sudo:Text1'..text)
Redis:del(BLANK..'BLANK11:Add:Rd:Sudo:Text2'..text)
Redis:del(BLANK.."BLANK11:Set:On"..msg.sender.user_id..":"..msg.chat_id)
Redis:srem(BLANK.."BLANK11:List:Rd:Sudo", text)
return false
end
end
if text == ("مسح الردود المتعدده عام") then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
local list = Redis:smembers(BLANK.."BLANK11:List:Rd:Sudo")
for k,v in pairs(list) do  
Redis:del(BLANK.."BLANK11:Add:Rd:Sudo:Text"..v) 
Redis:del(BLANK.."BLANK11:Add:Rd:Sudo:Text1"..v) 
Redis:del(BLANK.."BLANK11:Add:Rd:Sudo:Text2"..v)   
Redis:del(BLANK.."BLANK11:List:Rd:Sudo")
end
 LuaTele.sendText(msg_chat_id,msg_id,"تم حذف ردود المتعدده")
end
if text == ("الردود المتعدده عام") then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
local list = Redis:smembers(BLANK.."BLANK11:List:Rd:Sudo")
text = "\nقائمة ردود المتعدده \n━━━━━━━━\n"
for k,v in pairs(list) do
db = "رساله "
text = text..""..k.." => {"..v.."} => {"..db.."}\n"
end
if #list == 0 then
text = "لا توجد ردود متعدده"
end
 LuaTele.sendText(msg_chat_id,msg_id,"["..text.."]")
end
if text == "اضف رد متعدد عام" then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,true)
return  LuaTele.sendText(msg_chat_id,msg_id,"ارسل الرد الذي اريد اضافته")
end
if text == "حذف رد متعدد عام" then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK11:Set:On"..msg.sender.user_id..":"..msg.chat_id,true)
return  LuaTele.sendText(msg_chat_id,msg_id,"ارسل الان الكلمه لحذفها ")
end
if text then  
local test = Redis:get(BLANK.."BLANK11:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id)
if Redis:get(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "true1" then
Redis:set(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(BLANK.."BLANK11:Add:Rd:Sudo:Text"..test, text)  
end  
 LuaTele.sendText(msg_chat_id,msg_id,"تم حفظ الرد الاول ارسل الرد الثاني")
return false  
end  
end
if text then  
local test = Redis:get(BLANK.."BLANK11:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id)
if Redis:get(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "rd1" then
Redis:set(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(BLANK.."BLANK11:Add:Rd:Sudo:Text1"..test, text)  
end  
 LuaTele.sendText(msg_chat_id,msg_id,"تم حفظ الرد الثاني ارسل الرد الثالث")
return false  
end  
end
if text then  
local test = Redis:get(BLANK.."BLANK11:Text:Sudo:Bot"..msg.sender.user_id..":"..msg.chat_id)
if Redis:get(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id) == "rd2" then
Redis:set(BLANK.."BLANK11:Set:Rd"..msg.sender.user_id..":"..msg.chat_id,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
Redis:set(BLANK.."BLANK11:Add:Rd:Sudo:Text2"..test, text)  
end  
 LuaTele.sendText(msg_chat_id,msg_id,"تم حفظ الرد")
return false  
end  
end
if text then
local Text = Redis:get(BLANK.."BLANK11:Add:Rd:Sudo:Text"..text)   
local Text1 = Redis:get(BLANK.."BLANK11:Add:Rd:Sudo:Text1"..text)   
local Text2 = Redis:get(BLANK.."BLANK11:Add:Rd:Sudo:Text2"..text)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
 LuaTele.sendText(msg_chat_id,msg_id,texting[Textes])
end
end
 
if msg.content.video_note or msg.content.document or msg.content.audio or msg.content.video or msg.content.voice_note or msg.content.sticker or msg.content.animation or msg.content.photo then      
Redis:sadd(BLANK.."BLANK:allM"..msg.chat_id, msg.id)
if Redis:get(BLANK.."BLANK:Status:Del:Media"..msg.chat_id) then    
local gmedia = Redis:scard(BLANK.."BLANK:allM"..msg.chat_id)  
if gmedia >= 200 then
local liste = Redis:smembers(BLANK.."BLANK:allM"..msg.chat_id)
for k,v in pairs(liste) do
local Mesge = v
if Mesge then
t = "☆︙تم مسح "..k.." من الوسائط تلقائيا\n☆︙يمكنك تعطيل الميزه بستخدام الامر ( `تعطيل المسح التلقائي` )"
LuaTele.deleteMessages(msg.chat_id,{[1]= Mesge})
end
end
LuaTele.sendText(msg_chat_id,msg_id, t)
Redis:del(BLANK.."BLANK:allM"..msg.chat_id)
end
end
end

if text == ("امسح") then  
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
local list = Redis:smembers(BLANK.."BLANK:allM"..msg.chat_id)
for k,v in pairs(list) do
local Message = v
if Message then
t = "☆︙تم مسح "..k.." من الوسائط الموجوده"
LuaTele.deleteMessages(msg.chat_id,{[1]= Message})
Redis:del(BLANK.."BLANK:allM"..msg.chat_id)
end
end
if #list == 0 then
t = "☆︙لا يوجد ميديا في المجموعه"
end
 LuaTele.sendText(msg_chat_id,msg_id, t)
end
if text == ("عدد الميديا") then  
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
local gmria = Redis:scard(BLANK.."BLANK:allM"..msg.chat_id)  
 LuaTele.sendText(msg_chat_id,msg_id,"☆︙عدد الميديا الموجود هو (* "..gmria.." *)","md")
end
if text == "تعطيل المسح التلقائي" then        
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Status:Del:Media"..msg.chat_id)
 LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم تعطيل المسح التلقائي للميديا')
return false
end 
if text == "تفعيل المسح التلقائي" then        
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK:Status:Del:Media"..msg.chat_id,true)
LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم تفعيل المسح التلقائي للميديا')
return false
end 
if text == "تعطيل اليوتيوب" then        
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:del(BLANK.."BLANK:Status:yt"..msg.chat_id)
 LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم تعطيل المسح اليوتيوب')
return false
end 
if text == "تفعيل اليوتيوب" then        
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
Redis:set(BLANK.."BLANK:Status:yt"..msg.chat_id,true)
LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم تفعيل اليوتيوب')
return false
end 
if text and text:match('^بحث (.*)$') and Redis:get(BLANK.."BLANK:Status:yt"..msg.chat_id) then
local Ttext = text:match('^بحث (.*)$') 
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
local httpsCurl = "https://devstorm.ml/YoutubeApi/tahaj200.php?token="..Token.."&msg="..MSGID.."&Text="..URL.escape(Ttext).."&chat_id="..msg_chat_id.."&user="..msg.sender.user_id
io.popen('curl -s "'..httpsCurl..'"')
end


if text and text:match("^تعطيل (.*)$") and msg.reply_to_message_id == 0 then
local TextMsg = text:match("^تعطيل (.*)$")
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if TextMsg == 'الرابط' then
Redis:del(BLANK.."BLANK:Status:Link"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الرابط ","md",true)
end
if TextMsg == 'الترحيب' then
Redis:del(BLANK.."BLANK:Status:Welcome"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الترحيب ","md",true)
end
if TextMsg == 'الايدي' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Status:Id"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الايدي ","md",true)
end
if TextMsg == 'الايدي بالصوره' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Status:IdPhoto"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الايدي بالصوره ","md",true)
end
if TextMsg == 'ردود المدير' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Status:Reply"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل ردود المدير ","md",true)
end
if TextMsg == 'ردود المطور' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Status:ReplySudo"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل ردود المطور ","md",true)
end
if TextMsg == 'الحظر' or TextMsg == 'الطرد' or TextMsg == 'التقييد' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Status:BanId"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الحظر , الطرد , التقييد","md",true)
end
if TextMsg == 'الرفع' then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Status:SetId"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الرفع ","md",true)
end
if TextMsg == 'الالعاب' then
Redis:del(BLANK.."BLANK:Status:Games"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الالعاب ","md",true)
end
if TextMsg == 'اطردني' then
Redis:del(BLANK.."BLANK:Status:KickMe"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل اطردني ","md",true)
end
if TextMsg == 'البوت الخدمي' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:BotFree") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل البوت الخدمي ","md",true)
end
if TextMsg == 'التواصل' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:TwaslBot") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل التواصل داخل البوت ","md",true)
end

end

if text and text:match('^حظر عام @(%S+)$') then
local UserName = text:match('^حظر عام @(%S+)$')
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if Controllerbanall(msg_chat_id,UserId_Info.id) == true then 
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId_Info.id).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:BanAll:Groups",UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم حظره عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:BanAll:Groups",UserId_Info.id) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم حظره عام من المجموعات ").Reply,"md",true)  
end
end
if text and text:match('^الغاء العام @(%S+)$') then
local UserName = text:match('^الغاء العام @(%S+)$')
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:BanAll:Groups",UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء حظره عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:BanAll:Groups",UserId_Info.id) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'restricted',{1,1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء حظره عام من المجموعات  ").Reply,"md",true)  
end
end
if text and text:match('^حظر @(%S+)$') then
local UserName = text:match('^حظر @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId_Info.id).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم حظره من المجموعه مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId_Info.id) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم حظره من المجموعه ").Reply,"md",true)  
end
end
if text and text:match('^الغاء حظر @(%S+)$') then
local UserName = text:match('^الغاء حظر @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء حظره من المجموعه مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId_Info.id) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'restricted',{1,1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء حظره من المجموعه  ").Reply,"md",true)  
end
end

if text and text:match('^كتم @(%S+)$') then
local UserName = text:match('^كتم @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if GetInfoBot(msg).Delmsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حذف الرسائل* ',"md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if StatusSilent(msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId_Info.id).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم كتمه في المجموعه مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم كتمه في المجموعه  ").Reply,"md",true)  
end
end
if text and text:match('^الغاء كتم @(%S+)$') then
local UserName = text:match('^الغاء كتم @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء كتمه من المجموعه ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId_Info.id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء كتمه من المجموعه ").Reply,"md",true)  
end
end
if text and text:match('^تقييد (%d+) (.*) @(%S+)$') then
local UserName = {text:match('^تقييد (%d+) (.*) @(%S+)$') }
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserId_Info = LuaTele.searchPublicChat(UserName[3])
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName[3] and UserName[3]:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId_Info.id).." } *","md",true)  
end
if UserName[2] == 'يوم' then
Time_Restrict = UserName[1]:match('(%d+)')
Time = Time_Restrict * 86400
end
if UserName[2] == 'ساعه' then
Time_Restrict = UserName[1]:match('(%d+)')
Time = Time_Restrict * 3600
end
if UserName[2] == 'دقيقه' then
Time_Restrict = UserName[1]:match('(%d+)')
Time = Time_Restrict * 60
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'restricted',{1,0,0,0,0,0,0,0,0,tonumber(msg.date+Time)})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم تقييده في المجموعه \n☆︙لمدة : "..UserName[1]..' '..UserName[2]).Reply,"md",true)  
end

if text and text:match('^تقييد (%d+) (.*)$') and msg.reply_to_message_id ~= 0 then
local TimeKed = {text:match('^تقييد (%d+) (.*)$') }
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,Message_Reply.sender.user_id).." } *","md",true)  
end
if TimeKed[2] == 'يوم' then
Time_Restrict = TimeKed[1]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TimeKed[2] == 'ساعه' then
Time_Restrict = TimeKed[1]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TimeKed[2] == 'دقيقه' then
Time_Restrict = TimeKed[1]:match('(%d+)')
Time = Time_Restrict * 60
end
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0,tonumber(msg.date+Time)})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تقييده في المجموعه \n☆︙لمدة : "..TimeKed[1]..' '..TimeKed[2]).Reply,"md",true)  
end

if text and text:match('^تقييد (%d+) (.*) (%d+)$') then
local UserId = {text:match('^تقييد (%d+) (.*) (%d+)$') }
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserInfo = LuaTele.getUser(UserId[3])
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId[3]) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId[3]).." } *","md",true)  
end
if UserId[2] == 'يوم' then
Time_Restrict = UserId[1]:match('(%d+)')
Time = Time_Restrict * 86400
end
if UserId[2] == 'ساعه' then
Time_Restrict = UserId[1]:match('(%d+)')
Time = Time_Restrict * 3600
end
if UserId[2] == 'دقيقه' then
Time_Restrict = UserId[1]:match('(%d+)')
Time = Time_Restrict * 60
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId[3],'restricted',{1,0,0,0,0,0,0,0,0,tonumber(msg.date+Time)})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId[3],"\n☆︙تم تقييده في المجموعه \n☆︙لمدة : "..UserId[1]..' ' ..UserId[2]).Reply,"md",true)  
end
if text and text:match('^تقييد @(%S+)$') then
local UserName = text:match('^تقييد @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId_Info.id).." } *","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'restricted',{1,0,0,0,0,0,0,0,0})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم تقييده في المجموعه ").Reply,"md",true)  
end

if text and text:match('^الغاء التقييد @(%S+)$') then
local UserName = text:match('^الغاء التقييد @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'restricted',{1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم الغاء تقييده من المجموعه").Reply,"md",true)  
end

if text and text:match('^طرد @(%S+)$') then
local UserName = text:match('^طرد @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId_Info.id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId_Info.id).." } *","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم طرده من المجموعه ").Reply,"md",true)  
end
if text == ('حظر عام') and msg.reply_to_message_id ~= 0 then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if Controllerbanall(msg_chat_id,Message_Reply.sender.user_id) == true then 
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,Message_Reply.sender.user_id).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:BanAll:Groups",Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم حظره عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:BanAll:Groups",Message_Reply.sender.user_id) 
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم حظره عام من المجموعات ").Reply,"md",true)  
end
end
if text == ('الغاء العام') and msg.reply_to_message_id ~= 0 then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:BanAll:Groups",Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء حظره عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:BanAll:Groups",Message_Reply.sender.user_id) 
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'restricted',{1,1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء حظره عام من المجموعات  ").Reply,"md",true)  
end
end
if text == ('حظر') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,Message_Reply.sender.user_id).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم حظره من المجموعه مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) 
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم حظره من المجموعه ").Reply,"md",true)  
end
end
if text == ('الغاء حظر') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء حظره من المجموعه مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) 
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'restricted',{1,1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء حظره من المجموعه  ").Reply,"md",true)  
end
end

if text == ('كتم') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if GetInfoBot(msg).Delmsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حذف الرسائل* ',"md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if StatusSilent(msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,Message_Reply.sender.user_id).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم كتمه في المجموعه مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم كتمه في المجموعه  ").Reply,"md",true)  
end
end
if text == ('الغاء كتم') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء كتمه من المجموعه ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء كتمه من المجموعه ").Reply,"md",true)  
end
end

if text == ('تقييد') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,Message_Reply.sender.user_id).." } *","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'restricted',{1,0,0,0,0,0,0,0,0})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تقييده في المجموعه ").Reply,"md",true)  
end

if text == ('الغاء التقييد') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'restricted',{1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم الغاء تقييده من المجموعه").Reply,"md",true)  
end

if text == ('طرد') and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,Message_Reply.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,Message_Reply.sender.user_id).." } *","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم طرده من المجموعه ").Reply,"md",true)  
end

if text and text:match('^حظر عام (%d+)$') then
local UserId = text:match('^حظر عام (%d+)$')
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if Controllerbanall(msg_chat_id,UserId) == true then 
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:BanAll:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم حظره عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:BanAll:Groups",UserId) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم حظره عام من المجموعات ").Reply,"md",true)  
end
end
if text and text:match('^الغاء العام (%d+)$') then
local UserId = text:match('^الغاء العام (%d+)$')
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:BanAll:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء حظره عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:BanAll:Groups",UserId) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'restricted',{1,1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء حظره عام من المجموعات  ").Reply,"md",true)  
end
end
if text and text:match('^كتم عام (%d+)$') then
local UserId = text:match('^كتم عام (%d+)$')
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*•هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 'https://t.me/C_T_V_blank'}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n•عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n•عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end 
if Controller(msg_chat_id,UserId) == 'مطور السورس' then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*•عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
if Controller(msg_chat_id,UserId) == 'المطور الاساسي' then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*•عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:ktmAll:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"•تم كتمه عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:ktmAll:Groups",UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"•تم كتمه عام من المجموعات ").Reply,"md",true)  
end
end
if text and text:match('^الغاء كتم العام (%d+)$') then
local UserId = text:match('^الغاء كتم العام (%d+)$')
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*•هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 'https://t.me/C_T_V_blank'}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n•عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n•عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:ktmAll:Groups",UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"•تم الغاء كتمه عام من المجموعات مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:ktmAll:Groups",UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"•تم الغاء كتمه عام من المجموعات  ").Reply,"md",true)  
end
end
if text and text:match('^حظر (%d+)$') then
local UserId = text:match('^حظر (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم حظره من المجموعه مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم حظره من المجموعه ").Reply,"md",true)  
end
end
if text and text:match('^الغاء حظر (%d+)$') then
local UserId = text:match('^الغاء حظر (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء حظره من المجموعه مسبقا ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId) 
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'restricted',{1,1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء حظره من المجموعه  ").Reply,"md",true)  
end
end

if text and text:match('^كتم (%d+)$') then
local UserId = text:match('^كتم (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if GetInfoBot(msg).Delmsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حذف الرسائل* ',"md",true)  
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if StatusSilent(msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
if Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم كتمه في المجموعه مسبقا ").Reply,"md",true)  
else
Redis:sadd(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم كتمه في المجموعه  ").Reply,"md",true)  
end
end
if text and text:match('^الغاء كتم (%d+)$') then
local UserId = text:match('^الغاء كتم (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if not Redis:sismember(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء كتمه من المجموعه ").Reply,"md",true)  
else
Redis:srem(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId) 
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء كتمه من المجموعه ").Reply,"md",true)  
end
end

if text and text:match('^تقييد (%d+)$') then
local UserId = text:match('^تقييد (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'restricted',{1,0,0,0,0,0,0,0,0})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم تقييده في المجموعه ").Reply,"md",true)  
end

if text and text:match('^الغاء التقييد (%d+)$') then
local UserId = text:match('^الغاء التقييد (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'restricted',{1,1,1,1,1,1,1,1})
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم الغاء تقييده من المجموعه").Reply,"md",true)  
end

if text and text:match('^طرد (%d+)$') then
local UserId = text:match('^طرد (%d+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if not msg.Originators and not Redis:get(BLANK.."BLANK:Status:BanId"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل (الحظر : الطرد : التقييد) من قبل المدراء","md",true)
end 
local UserInfo = LuaTele.getUser(UserId)
if UserInfo.luatele == "error" and UserInfo.code == 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام ايدي خطأ ","md",true)  
end
if StatusCanOrNotCan(msg_chat_id,UserId) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,UserId).." } *","md",true)  
end
LuaTele.setChatMemberStatus(msg.chat_id,UserId,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId,"☆︙تم طرده من المجموعه ").Reply,"md",true)  
end

if text == "اطردني" or text == "طردني" then
if not Redis:get(BLANK.."BLANK:Status:KickMe"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙امر اطردني تم تعطيله من قبل المدراء *","md",true)  
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if StatusCanOrNotCan(msg_chat_id,msg.sender.user_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ لا تستطيع استخدام الامر على { "..Controller(msg_chat_id,msg.sender.user_id).." } *","md",true)  
end
local StatusMember = LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele
if (StatusMember == "chatMemberStatusCreator") then
KickMe = true
elseif (StatusMember == "chatMemberStatusAdministrator") then
KickMe = true
else
KickMe = false
end
if KickMe == true then
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙عذرا لا استطيع طرد ادمنيه ومنشئين المجموعه*","md",true)    
end
LuaTele.setChatMemberStatus(msg.chat_id,msg.sender.user_id,'banned',0)
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم طردك من المجموعه بنائآ على طلبك").Reply,"md",true)  
end

if text == 'ادمنيه الكروب' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Administrators", "*", 0, 200)
listAdmin = '\n*☆︙قائمه الادمنيه \n — — — — — — — — —*\n'
local List_Members = Info_Members.members
for k, v in pairs(List_Members) do
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Creator = '→ *{ المالك }*'
else
Creator = ""
end
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if UserInfo.username ~= "" then
listAdmin = listAdmin.."*"..k.." - @"..UserInfo.username.."* "..Creator.."\n"
else
listAdmin = listAdmin.."*"..k.." - *["..UserInfo.id.."](tg://user?id="..UserInfo.id..") "..Creator.."\n"
end
end
LuaTele.sendText(msg_chat_id,msg_id,listAdmin,"md",true)  
end
if text == 'رفع الادمنيه' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
y = 0
for k, v in pairs(List_Members) do
if Info_Members.members[k].bot_info == nil then
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..msg_chat_id,v.member_id.user_id) 
x = x + 1
else
Redis:sadd(BLANK.."BLANK:Addictive:Group"..msg_chat_id,v.member_id.user_id) 
y = y + 1
end
end
end
LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙تم ترقيه - ('..y..') ادمنيه *',"md",true)  
end

if text == 'المالك' then
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*•عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
for k, v in pairs(List_Members) do
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if UserInfo.first_name == "" then
LuaTele.sendText(msg_chat_id,msg_id,"*•اوبس , المالك حسابه محذوف *","md",true)  
return false
end
if UserInfo.username then
Creator = "*•مالك المجموعه : @"..UserInfo.username.."*\n"
else
Creator = "•مالك المجموعه : *["..UserInfo.first_name.."](tg://user?id="..UserInfo.id..")\n"
end
return LuaTele.sendText(msg_chat_id,msg_id,Creator,"md",true)  
end
end
end

if text == 'كشف البوتات' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Bots", "*", 0, 200)
local List_Members = Info_Members.members
listBots = '\n*☆︙قائمه البوتات \n — — — — — — — — —*\n'
x = 0
for k, v in pairs(List_Members) do
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if Info_Members.members[k].status.luatele == "chatMemberStatusAdministrator" then
x = x + 1
Admin = '→ *{ ادمن }*'
else
Admin = ""
end
listBots = listBots.."*"..k.." - @"..UserInfo.username.."* "..Admin.."\n"
end
LuaTele.sendText(msg_chat_id,msg_id,listBots.."*\n— — — — — — — — —\n☆︙عدد البوتات التي هي ادمن ( "..x.." )*","md",true)  
end


 
if text == 'المقيدين' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Recent", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
y = nil
restricted = '\n*☆︙قائمه المقيديين \n — — — — — — — — —*\n'
for k, v in pairs(List_Members) do
if Info_Members.members[k].status.is_member == true and Info_Members.members[k].status.luatele == "chatMemberStatusRestricted" then
y = true
x = x + 1
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if UserInfo.username ~= "" then
restricted = restricted.."*"..x.." - @"..UserInfo.username.."*\n"
else
restricted = restricted.."*"..x.." - *["..UserInfo.id.."](tg://user?id="..UserInfo.id..") \n"
end
end
end
if y == true then
LuaTele.sendText(msg_chat_id,msg_id,restricted,"md",true)  
end
end


if text == "غادر" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
LuaTele.sendText(msg_chat_id,msg_id,"*\n☆︙تم مغادرة المجموعه بامر من المطور *","md",true)  
local Left_Bot = LuaTele.leaveChat(msg.chat_id)
end
if text == 'تاك للكل' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = LuaTele.searchChatMembers(msg_chat_id, "*", 200)
local List_Members = Info_Members.members
listall = '\n*☆︙قائمه الاعضاء \n — — — — — — — — —*\n'
for k, v in pairs(List_Members) do
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if UserInfo.username ~= "" then
listall = listall.."*"..k.." - @"..UserInfo.username.."*\n"
else
listall = listall.."*"..k.." -* ["..UserInfo.id.."](tg://user?id="..UserInfo.id..")\n"
end
end
LuaTele.sendText(msg_chat_id,msg_id,listall,"md",true)  
end

if text == "قفل الدردشه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:text"..msg_chat_id,true) 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الدردشه").Lock,"md",true)  
return false
end 
if text == "قفل الاضافه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:set(BLANK.."BLANK:Lock:AddMempar"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل اضافة الاعضاء").Lock,"md",true)  
return false
end 
if text == "قفل الدخول" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:set(BLANK.."BLANK:Lock:Join"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل دخول الاعضاء").Lock,"md",true)  
return false
end 
if text == "قفل البوتات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:set(BLANK.."BLANK:Lock:Bot:kick"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل البوتات").Lock,"md",true)  
return false
end 
if text == "قفل البوتات بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:set(BLANK.."BLANK:Lock:Bot:kick"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل البوتات").lockKick,"md",true)  
return false
end 
if text == "قفل الاشعارات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end  
Redis:set(BLANK.."BLANK:Lock:tagservr"..msg_chat_id,true)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الاشعارات").Lock,"md",true)  
return false
end 
if text == "قفل التثبيت" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end  
Redis:set(BLANK.."BLANK:lockpin"..msg_chat_id,(LuaTele.getChatPinnedMessage(msg_chat_id).id or true)) 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التثبيت هنا").Lock,"md",true)  
return false
end 
if text == "قفل التعديل" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:set(BLANK.."BLANK:Lock:edit"..msg_chat_id,true) 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل تعديل").Lock,"md",true)  
return false
end 
if text == "قفل تعديل الميديا" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:set(BLANK.."BLANK:Lock:edit"..msg_chat_id,true) 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل تعديل").Lock,"md",true)  
return false
end 
if text == "قفل الكل" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end  
Redis:set(BLANK.."BLANK:Lock:tagservrbot"..msg_chat_id,true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
Redis:set(BLANK..'BLANK:'..lock..msg_chat_id,"del")    
end
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل جميع الاوامر").Lock,"md",true)  
return false
end 


--------------------------------------------------------------------------------------------------------------
if text == "فتح الاضافه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:AddMempar"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح اضافة الاعضاء").unLock,"md",true)  
return false
end 
if text == "فتح الدردشه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:text"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الدردشه").unLock,"md",true)  
return false
end 
if text == "فتح الدخول" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:Join"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح دخول الاعضاء").unLock,"md",true)  
return false
end 
if text == "فتح البوتات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:Bot:kick"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح البوتات").unLock,"md",true)  
return false
end 
if text == "فتح البوتات " then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:Bot:kick"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح البوتات").unLock,"md",true)  
return false
end 
if text == "فتح الاشعارات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end  
Redis:del(BLANK.."BLANK:Lock:tagservr"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح الاشعارات").unLock,"md",true)  
return false
end 
if text == "فتح التثبيت" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:lockpin"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح التثبيت هنا").unLock,"md",true)  
return false
end 
if text == "فتح التعديل" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:edit"..msg_chat_id) 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح تعديل").unLock,"md",true)  
return false
end 
if text == "فتح التعديل الميديا" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:edit"..msg_chat_id) 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح تعديل").unLock,"md",true)  
return false
end 
if text == "فتح الكل" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end 
Redis:del(BLANK.."BLANK:Lock:tagservrbot"..msg_chat_id)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
Redis:del(BLANK..'BLANK:'..lock..msg_chat_id)    
end
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فـتح جميع الاوامر").unLock,"md",true)  
return false
end 
if text == "@all" or text == "تاك عام" or text == "all" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
local Info_Members = LuaTele.searchChatMembers(msg_chat_id, "*", 200)
x = 0
tags = 0
local list = Info_Members.members
for k, v in pairs(list) do
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if x == 5 or x == tags or k == 0 then
tags = x + 5
listall = ""
end
x = x + 1
if UserInfo.first_name ~= '' then
listall = listall.." ["..UserInfo.first_name.."](tg://user?id="..UserInfo.id.."),"
end
if x == 5 or x == tags or k == 0 then
LuaTele.sendText(msg_chat_id,msg_id,listall,"md",true)  
end
end
end
if text == "غنيلي" or text == "غني" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار الاغنيه لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/hhhbobxv/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "ميمز" or text == "ميمزز" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار الميمز لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/MemzDavid/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "فلم" or text == "افلام" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار الفلم لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/MoviesDavid/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "انمي" or text == "انميي" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار انمي لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/AnimeDavid/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end

if text == "صوره" or text == "صورة" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار صوره لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendphoto?chat_id=' .. msg.chat_id .. '&photo=https://t.me/PhotosDavid/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "متحركه" or text == "متحركة" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار متحركه لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendanimation?chat_id=' .. msg.chat_id .. '&animation=https://t.me/GifDavid/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "ريمكس" or text == "ريماكس" then 
Abs = math.random(2,140); 
local Text ='*◉︙تم اختيار ريمكس لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/RemixDavid/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "شعر" or text == "اشعار" then 
Abs = math.random(3,140); 
local Text ='*◉︙تم اختيار شعر لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/L1BBBL/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
if text == "اغنيه" or text == "اغاني" then 
Abs = math.random(4,140); 
local Text ='*◉︙تم اختيار اغنيه لك*'
local MsgId = msg.id/2097152/0.5
local MSGID = string.gsub(MsgId,'.0','')
https.request("https://api.telegram.org/bot"..Token..'/sendVoice?chat_id=' .. msg.chat_id .. '&voice=https://t.me/hhhbobxv/'..Abs..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..MsgId.."&parse_mode=markdown") 
end
--------------------------------------------------------------------------------------------------------------
if text == "قفل التكرار" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:hset(BLANK.."BLANK:Spam:Group:User"..msg_chat_id ,"Spam:User","del")  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التكرار").Lock,"md",true)  
elseif text == "قفل التكرار بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:hset(BLANK.."BLANK:Spam:Group:User"..msg_chat_id ,"Spam:User","keed")  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التكرار").lockKid,"md",true)  
elseif text == "قفل التكرار بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:hset(BLANK.."BLANK:Spam:Group:User"..msg_chat_id ,"Spam:User","mute")  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التكرار").lockKtm,"md",true)  
elseif text == "قفل التكرار بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:hset(BLANK.."BLANK:Spam:Group:User"..msg_chat_id ,"Spam:User","kick")  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التكرار").lockKick,"md",true)  
elseif text == "فتح التكرار" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:hdel(BLANK.."BLANK:Spam:Group:User"..msg_chat_id ,"Spam:User")  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح التكرار").unLock,"md",true)  
end
if text == "قفل الروابط" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Link"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الروابط").Lock,"md",true)  
return false
end 
if text == "قفل الروابط بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Link"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الروابط").lockKid,"md",true)  
return false
end 
if text == "قفل الروابط بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Link"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الروابط").lockKtm,"md",true)  
return false
end 
if text == "قفل الروابط بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Link"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الروابط").lockKick,"md",true)  
return false
end 
if text == "فتح الروابط" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Link"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الروابط").unLock,"md",true)  
return false
end 
if text == "قفل المعرفات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:User:Name"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المعرفات").Lock,"md",true)  
return false
end 
if text == "قفل المعرفات بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:User:Name"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المعرفات").lockKid,"md",true)  
return false
end 
if text == "قفل المعرفات بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:User:Name"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المعرفات").lockKtm,"md",true)  
return false
end 
if text == "قفل المعرفات بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:User:Name"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المعرفات").lockKick,"md",true)  
return false
end 
if text == "فتح المعرفات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:User:Name"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح المعرفات").unLock,"md",true)  
return false
end 
if text == "قفل التاك" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:hashtak"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التاك").Lock,"md",true)  
return false
end 
if text == "قفل التاك بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:hashtak"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التاك").lockKid,"md",true)  
return false
end 
if text == "قفل التاك بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:hashtak"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التاك").lockKtm,"md",true)  
return false
end 
if text == "قفل التاك بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:hashtak"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التاك").lockKick,"md",true)  
return false
end 
if text == "فتح التاك" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:hashtak"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح التاك").unLock,"md",true)  
return false
end 
if text == "قفل الشارحه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Cmd"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الشارحه").Lock,"md",true)  
return false
end 
if text == "قفل الشارحه بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Cmd"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الشارحه").lockKid,"md",true)  
return false
end 
if text == "قفل الشارحه بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Cmd"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الشارحه").lockKtm,"md",true)  
return false
end 
if text == "قفل الشارحه بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Cmd"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الشارحه").lockKick,"md",true)  
return false
end 
if text == "فتح الشارحه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Cmd"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الشارحه").unLock,"md",true)  
return false
end 
if text == "قفل الصور"then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Photo"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصور").Lock,"md",true)  
return false
end 
if text == "قفل الصور بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Photo"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصور").lockKid,"md",true)  
return false
end 
if text == "قفل الصور بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Photo"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصور").lockKtm,"md",true)  
return false
end 
if text == "قفل الصور بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Photo"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصور").lockKick,"md",true)  
return false
end 
if text == "فتح الصور" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Photo"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الصور").unLock,"md",true)  
return false
end 
if text == "قفل الفيديو" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Video"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الفيديو").Lock,"md",true)  
return false
end 
if text == "قفل الفيديو بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Video"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الفيديو").lockKid,"md",true)  
return false
end 
if text == "قفل الفيديو بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Video"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الفيديو").lockKtm,"md",true)  
return false
end 
if text == "قفل الفيديو بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Video"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الفيديو").lockKick,"md",true)  
return false
end 
if text == "فتح الفيديو" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Video"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الفيديو").unLock,"md",true)  
return false
end 
if text == "قفل المتحركه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Animation"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المتحركه").Lock,"md",true)  
return false
end 
if text == "قفل المتحركه بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Animation"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المتحركه").lockKid,"md",true)  
return false
end 
if text == "قفل المتحركه بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Animation"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المتحركه").lockKtm,"md",true)  
return false
end 
if text == "قفل المتحركه بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Animation"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل المتحركه").lockKick,"md",true)  
return false
end 
if text == "فتح المتحركه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Animation"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح المتحركه").unLock,"md",true)  
return false
end 
if text == "قفل الالعاب" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:geam"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الالعاب").Lock,"md",true)  
return false
end 
if text == "قفل الالعاب بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:geam"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الالعاب").lockKid,"md",true)  
return false
end 
if text == "قفل الالعاب بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:geam"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الالعاب").lockKtm,"md",true)  
return false
end 
if text == "قفل الالعاب بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:geam"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الالعاب").lockKick,"md",true)  
return false
end 
if text == "فتح الالعاب" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:geam"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الالعاب").unLock,"md",true)  
return false
end 
if text == "قفل الاغاني" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Audio"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الاغاني").Lock,"md",true)  
return false
end 
if text == "قفل الاغاني بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Audio"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الاغاني").lockKid,"md",true)  
return false
end 
if text == "قفل الاغاني بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Audio"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الاغاني").lockKtm,"md",true)  
return false
end 
if text == "قفل الاغاني بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Audio"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الاغاني").lockKick,"md",true)  
return false
end 
if text == "فتح الاغاني" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Audio"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الاغاني").unLock,"md",true)  
return false
end 
if text == "قفل الصوت" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:vico"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصوت").Lock,"md",true)  
return false
end 
if text == "قفل الصوت بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:vico"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصوت").lockKid,"md",true)  
return false
end 
if text == "قفل الصوت بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:vico"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصوت").lockKtm,"md",true)  
return false
end 
if text == "قفل الصوت بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:vico"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الصوت").lockKick,"md",true)  
return false
end 
if text == "فتح الصوت" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:vico"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الصوت").unLock,"md",true)  
return false
end 
if text == "قفل الكيبورد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Keyboard"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكيبورد").Lock,"md",true)  
return false
end 
if text == "قفل الكيبورد بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Keyboard"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكيبورد").lockKid,"md",true)  
return false
end 
if text == "قفل الكيبورد بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Keyboard"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكيبورد").lockKtm,"md",true)  
return false
end 
if text == "قفل الكيبورد بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Keyboard"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكيبورد").lockKick,"md",true)  
return false
end 
if text == "فتح الكيبورد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Keyboard"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الكيبورد").unLock,"md",true)  
return false
end 
if text == "قفل الملصقات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Sticker"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملصقات").Lock,"md",true)  
return false
end 
if text == "قفل الملصقات بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Sticker"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملصقات").lockKid,"md",true)  
return false
end 
if text == "قفل الملصقات بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Sticker"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملصقات").lockKtm,"md",true)  
return false
end 
if text == "قفل الملصقات بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Sticker"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملصقات").lockKick,"md",true)  
return false
end 
if text == "فتح الملصقات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Sticker"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الملصقات").unLock,"md",true)  
return false
end 
if text == "قفل التوجيه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:forward"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التوجيه").Lock,"md",true)  
return false
end 
if text == "قفل التوجيه بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:forward"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التوجيه").lockKid,"md",true)  
return false
end 
if text == "قفل التوجيه بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:forward"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التوجيه").lockKtm,"md",true)  
return false
end 
if text == "قفل التوجيه بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:forward"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل التوجيه").lockKick,"md",true)  
return false
end 
if text == "فتح التوجيه" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:forward"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح التوجيه").unLock,"md",true)  
return false
end 
if text == "قفل الملفات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Document"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملفات").Lock,"md",true)  
return false
end 
if text == "قفل الملفات بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Document"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملفات").lockKid,"md",true)  
return false
end 
if text == "قفل الملفات بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Document"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملفات").lockKtm,"md",true)  
return false
end 
if text == "قفل الملفات بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Document"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الملفات").lockKick,"md",true)  
return false
end 
if text == "فتح الملفات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Document"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الملفات").unLock,"md",true)  
return false
end 
if text == "قفل السيلفي" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Unsupported"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل السيلفي").Lock,"md",true)  
return false
end 
if text == "قفل السيلفي بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Unsupported"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل السيلفي").lockKid,"md",true)  
return false
end 
if text == "قفل السيلفي بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Unsupported"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل السيلفي").lockKtm,"md",true)  
return false
end 
if text == "قفل السيلفي بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Unsupported"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل السيلفي").lockKick,"md",true)  
return false
end 
if text == "فتح السيلفي" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Unsupported"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح السيلفي").unLock,"md",true)  
return false
end 
if text == "قفل الماركداون" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Markdaun"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الماركداون").Lock,"md",true)  
return false
end 
if text == "قفل الماركداون بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Markdaun"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الماركداون").lockKid,"md",true)  
return false
end 
if text == "قفل الماركداون بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Markdaun"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الماركداون").lockKtm,"md",true)  
return false
end 
if text == "قفل الماركداون بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Markdaun"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الماركداون").lockKick,"md",true)  
return false
end 
if text == "فتح الماركداون" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Markdaun"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الماركداون").unLock,"md",true)  
return false
end 
if text == "قفل الجهات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Contact"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الجهات").Lock,"md",true)  
return false
end 
if text == "قفل الجهات بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Contact"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الجهات").lockKid,"md",true)  
return false
end 
if text == "قفل الجهات بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Contact"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الجهات").lockKtm,"md",true)  
return false
end 
if text == "قفل الجهات بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Contact"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الجهات").lockKick,"md",true)  
return false
end 
if text == "فتح الجهات" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Contact"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الجهات").unLock,"md",true)  
return false
end 
if text == "قفل الكلايش" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Spam"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكلايش").Lock,"md",true)  
return false
end 
if text == "قفل الكلايش بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Spam"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكلايش").lockKid,"md",true)  
return false
end 
if text == "قفل الكلايش بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Spam"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكلايش").lockKtm,"md",true)  
return false
end 
if text == "قفل الكلايش بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Spam"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الكلايش").lockKick,"md",true)  
return false
end 
if text == "فتح الكلايش" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Spam"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الكلايش").unLock,"md",true)  
return false
end 
if text == "قفل الانلاين" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Inlen"..msg_chat_id,"del")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الانلاين").Lock,"md",true)  
return false
end 
if text == "قفل الانلاين بالتقيد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Inlen"..msg_chat_id,"ked")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الانلاين").lockKid,"md",true)  
return false
end 
if text == "قفل الانلاين بالكتم" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Inlen"..msg_chat_id,"ktm")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الانلاين").lockKtm,"md",true)  
return false
end 
if text == "قفل الانلاين بالطرد" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Lock:Inlen"..msg_chat_id,"kick")  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم قفـل الانلاين").lockKick,"md",true)  
return false
end 
if text == "فتح الانلاين" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Lock:Inlen"..msg_chat_id)  
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(msg.sender.user_id,"☆︙تم فتح الانلاين").unLock,"md",true)  
return false
end 
if text == "ضع رابط" or text == "وضع رابط" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Set:Link"..msg_chat_id..""..msg.sender.user_id,120,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"📥︙ارسل رابط المجموعه او رابط قناة المجموعه","md",true)  
end
if text == "مسح الرابط" or text == "حذف الرابط" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Group:Link"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم مسح الرابط ","md",true)             
end
if text == "الرابط" then
if not Redis:get(BLANK.."BLANK:Status:Link"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل جلب الرابط من قبل الادمنيه","md",true)
end 
local Get_Chat = LuaTele.getChat(msg_chat_id)
local GetLink = Redis:get(BLANK.."BLANK:Group:Link"..msg_chat_id) 
if GetLink then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{{text =Get_Chat.title, url = GetLink}, },}}
return LuaTele.sendText(msg_chat_id, msg_id, "☆︙ Link Group : \n["..Get_Chat.title.. ']('..GetLink..')', 'md', true, false, false, false, reply_markup)
else
local LinkGroup = LuaTele.generateChatInviteLink(msg_chat_id,'taha',tonumber(msg.date+86400),100,false)
if LinkGroup.code == 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا استطيع جلب الرابط بسبب ليس لدي صلاحيه دعوه مستخدمين من خلال الرابط ","md",true)
end
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{{text = Get_Chat.title, url = LinkGroup.invite_link},},}}
return LuaTele.sendText(msg_chat_id, msg_id, "☆︙ Link Group : \n["..Get_Chat.title.. ']('..LinkGroup.invite_link..')', 'md', true, false, false, false, reply_markup)
end
end

if text == "ضع ترحيب" or text == "وضع ترحيب" then  
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."Tshake:Welcome:Group" .. msg_chat_id .. "" .. msg.sender.user_id, 120, true)  
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي الترحيب الان".."\n☆︙تستطيع اضافة مايلي !\n☆︙دالة عرض الاسم »{`name`}\n☆︙دالة عرض المعرف »{`user`}\n☆︙دالة عرض اسم المجموعه »{`NameCh`}","md",true)   
end
if text == "الترحيب" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not Redis:get(BLANK.."BLANK:Status:Welcome"..msg_chat_id) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل الترحيب من قبل الادمنيه","md",true)
end 
local Welcome = Redis:get(BLANK.."BLANK:Welcome:Group"..msg_chat_id)
if Welcome then 
return LuaTele.sendText(msg_chat_id,msg_id,Welcome,"md",true)   
else 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لم يتم تعيين ترحيب للمجموعه","md",true)   
end 
end
if text == "مسح الترحيب" or text == "حذف الترحيب" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Welcome:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم ازالة ترحيب المجموعه","md",true)   
end
if text == "ضع قوانين" or text == "وضع قوانين" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Set:Rules:" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي القوانين الان","md",true)  
end
if text == "مسح القوانين" or text == "حذف القوانين" then  
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Group:Rules"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم ازالة قوانين المجموعه","md",true)    
end
if text == "القوانين" then 
local Rules = Redis:get(BLANK.."BLANK:Group:Rules" .. msg_chat_id)   
if Rules then     
return LuaTele.sendText(msg_chat_id,msg_id,Rules,"md",true)     
else      
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا توجد قوانين هنا","md",true)     
end    
end
if text == "ضع وصف" or text == "وضع وصف" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).Info == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تغيير المعلومات* ',"md",true)  
end
Redis:setex(BLANK.."BLANK:Set:Description:" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي وصف المجموعه الان","md",true)  
end
if text == "مسح الوصف" or text == "حذف الوصف" then  
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).Info == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تغيير المعلومات* ',"md",true)  
end
LuaTele.setChatDescription(msg_chat_id, '') 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم ازالة قوانين المجموعه","md",true)    
end

if text and text:match("^ضع اسم (.*)") or text and text:match("^وضع اسم (.*)") then 
local NameChat = text:match("^ضع اسم (.*)") or text:match("^وضع اسم (.*)") 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).Info == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تغيير المعلومات* ',"md",true)  
end
LuaTele.setChatTitle(msg_chat_id,NameChat)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تغيير اسم المجموعه الى : "..NameChat,"md",true)    
end

if text == ("ضع صوره") then  
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if GetInfoBot(msg).Info == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تغيير المعلومات* ',"md",true)  
end
Redis:set(BLANK.."BLANK:Chat:Photo"..msg_chat_id..":"..msg.sender.user_id,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الصوره لوضعها","md",true)    
end

if text == "مسح قائمه المنع" then   
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Filter"..msg_chat_id)  
if #list == 0 then  
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙لا يوجد كلمات ممنوعه هنا *","md",true)   
end  
for k,v in pairs(list) do  
v = v:gsub('photo:',"") 
v = v:gsub('sticker:',"") 
v = v:gsub('animation:',"") 
v = v:gsub('text:',"") 
Redis:del(BLANK.."BLANK:Filter:Group:"..v..msg_chat_id)  
Redis:srem(BLANK.."BLANK:List:Filter"..msg_chat_id,v)  
end  
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح ("..#list..") كلمات ممنوعه *","md",true)   
end
if text == "قائمه المنع" then   
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Filter"..msg_chat_id)  
if #list == 0 then  
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙لا يوجد كلمات ممنوعه هنا *","md",true)   
end  
Filter = '\n*☆︙قائمه المنع \n — — — — — — — — —*\n'
for k,v in pairs(list) do  
print(v)
if v:match('photo:(.*)') then
ver = 'صوره'
elseif v:match('animation:(.*)') then
ver = 'متحركه'
elseif v:match('sticker:(.*)') then
ver = 'ملصق'
elseif v:match('text:(.*)') then
ver = v:gsub('text:',"") 
end
v = v:gsub('photo:',"") 
v = v:gsub('sticker:',"") 
v = v:gsub('animation:',"") 
v = v:gsub('text:',"") 
local Text_Filter = Redis:get(BLANK.."BLANK:Filter:Group:"..v..msg_chat_id)   
Filter = Filter.."*"..k.."- "..ver.." » { "..Text_Filter.." }*\n"    
end  
LuaTele.sendText(msg_chat_id,msg_id,Filter,"md",true)  
end  
if text == "منع" then       
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id,'true')
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙ارسل الان { ملصق ,متحركه ,صوره ,رساله } *',"md",true)  
end    
if text == "الغاء منع" then    
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK..'BLANK:FilterText'..msg_chat_id..':'..msg.sender.user_id,'DelFilter')
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙ارسل الان { ملصق ,متحركه ,صوره ,رساله } *',"md",true)  
end

if text == "اضف امر" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Command:Reids:Group"..msg_chat_id..":"..msg.sender.user_id,"true") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙الان ارسل لي الامر القديم ...","md",true)
end
if text == "حذف امر" or text == "مسح امر" then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Command:Reids:Group:Del"..msg_chat_id..":"..msg.sender.user_id,"true") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الامر الذي قمت بوضعه مكان الامر القديم","md",true)
end
if text == "حذف الاوامر المضافه" or text == "مسح الاوامر المضافه" then 
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:Command:List:Group"..msg_chat_id)
for k,v in pairs(list) do
Redis:del(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..v)
Redis:del(BLANK.."BLANK:Command:List:Group"..msg_chat_id)
end
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم مسح جميع الاوامر التي تم اضافتها","md",true)
end
if text == "الاوامر المضافه" then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:Command:List:Group"..msg_chat_id.."")
Command = "☆︙قائمه الاوامر المضافه  \n— — — — — — — — —\n"
for k,v in pairs(list) do
Commands = Redis:get(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..v)
if Commands then 
Command = Command..""..k..": ("..v..") ← {"..Commands.."}\n"
else
Command = Command..""..k..": ("..v..") \n"
end
end
if #list == 0 then
Command = "☆︙لا توجد اوامر اضافيه"
end
return LuaTele.sendText(msg_chat_id,msg_id,Command,"md",true)
end

if text == "تثبيت" and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).PinMsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تثبيت الرسائل* ',"md",true)  
end
LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تم تثبيت الرساله","md",true)
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local PinMsg = LuaTele.pinChatMessage(msg_chat_id,Message_Reply.id,true)
end
if text == 'الغاء التثبيت' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).PinMsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تثبيت الرسائل* ',"md",true)  
end
LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تم الغاء تثبيت الرساله","md",true)
LuaTele.unpinChatMessage(msg_chat_id) 
end
if text == 'الغاء تثبيت الكل' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).PinMsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه تثبيت الرسائل* ',"md",true)  
end
LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙تم الغاء تثبيت جميع الرسائل","md",true)
for i=0, 20 do
local UnPin = LuaTele.unpinChatMessage(msg_chat_id) 
if not LuaTele.getChatPinnedMessage(msg_chat_id).id then
break
end
end
end
if text == "الحمايه" then    
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'تعطيل الرابط', data = msg.sender.user_id..'/'.. 'unmute_link'},{text = 'تفعيل الرابط', data = msg.sender.user_id..'/'.. 'mute_link'},
},
{
{text = 'تعطيل الترحيب', data = msg.sender.user_id..'/'.. 'unmute_welcome'},{text = 'تفعيل الترحيب', data = msg.sender.user_id..'/'.. 'mute_welcome'},
},
{
{text = 'اتعطيل الايدي', data = msg.sender.user_id..'/'.. 'unmute_Id'},{text = 'اتفعيل الايدي', data = msg.sender.user_id..'/'.. 'mute_Id'},
},
{
{text = 'تعطيل الايدي بالصوره', data = msg.sender.user_id..'/'.. 'unmute_IdPhoto'},{text = 'تفعيل الايدي بالصوره', data = msg.sender.user_id..'/'.. 'mute_IdPhoto'},
},
{
{text = 'تعطيل ردود المدير', data = msg.sender.user_id..'/'.. 'unmute_ryple'},{text = 'تفعيل ردود المدير', data = msg.sender.user_id..'/'.. 'mute_ryple'},
},
{
{text = 'تعطيل ردود المطور', data = msg.sender.user_id..'/'.. 'unmute_ryplesudo'},{text = 'تفعيل ردود المطور', data = msg.sender.user_id..'/'.. 'mute_ryplesudo'},
},
{
{text = 'تعطيل الرفع', data = msg.sender.user_id..'/'.. 'unmute_setadmib'},{text = 'تفعيل الرفع', data = msg.sender.user_id..'/'.. 'mute_setadmib'},
},
{
{text = 'تعطيل الطرد', data = msg.sender.user_id..'/'.. 'unmute_kickmembars'},{text = 'تفعيل الطرد', data = msg.sender.user_id..'/'.. 'mute_kickmembars'},
},
{
{text = 'تعطيل الالعاب', data = msg.sender.user_id..'/'.. 'unmute_games'},{text = 'تفعيل الالعاب', data = msg.sender.user_id..'/'.. 'mute_games'},
},
{
{text = 'تعطيل اطردني', data = msg.sender.user_id..'/'.. 'unmute_kickme'},{text = 'تفعيل اطردني', data = msg.sender.user_id..'/'.. 'mute_kickme'},
},
{
{text = '- اخفاء الامر ', data =msg.sender.user_id..'/'.. 'delAmr'}
},
}
}
return LuaTele.sendText(msg_chat_id, msg_id, '☆︙اوامر التفعيل والتعطيل ', 'md', false, false, false, false, reply_markup)
end  
if text == 'اعدادات الحمايه' then 
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if Redis:get(BLANK.."BLANK:Status:Link"..msg.chat_id) then
Statuslink = '❬ ✔️ ❭' else Statuslink = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:Welcome"..msg.chat_id) then
StatusWelcome = '❬ ✔️ ❭' else StatusWelcome = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:Id"..msg.chat_id) then
StatusId = '❬ ✔️ ❭' else StatusId = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:IdPhoto"..msg.chat_id) then
StatusIdPhoto = '❬ ✔️ ❭' else StatusIdPhoto = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:Reply"..msg.chat_id) then
StatusReply = '❬ ✔️ ❭' else StatusReply = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:ReplySudo"..msg.chat_id) then
StatusReplySudo = '❬ ✔️ ❭' else StatusReplySudo = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:BanId"..msg.chat_id)  then
StatusBanId = '❬ ✔️ ❭' else StatusBanId = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:SetId"..msg.chat_id) then
StatusSetId = '❬ ✔️ ❭' else StatusSetId = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
StatusGames = '❬ ✔️ ❭' else StatusGames = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:KickMe"..msg.chat_id) then
Statuskickme = '❬ ✔️ ❭' else Statuskickme = '❬ ❌ ❭'
end
if Redis:get(BLANK.."BLANK:Status:AddMe"..msg.chat_id) then
StatusAddme = '❬ ✔️ ❭' else StatusAddme = '❬ ❌ ❭'
end
local protectionGroup = '\n*☆︙اعدادات حمايه المجموعه\n — — — — — — — — —\n'
..'\n☆︙جلب الرابط ➤ '..Statuslink
..'\n☆︙جلب الترحيب ➤ '..StatusWelcome
..'\n☆︙الايدي ➤ '..StatusId
..'\n☆︙الايدي بالصوره ➤ '..StatusIdPhoto
..'\n☆︙ردود المدير ➤ '..StatusReply
..'\n☆︙ردود المطور ➤ '..StatusReplySudo
..'\n☆︙الرفع ➤ '..StatusSetId
..'\n☆︙الحظر - الطرد ➤ '..StatusBanId
..'\n☆︙الالعاب ➤ '..StatusGames
..'\n☆︙امر اطردني ➤ '..Statuskickme..'*\n\n.'
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id, msg_id,protectionGroup,'md', false, false, false, false, reply_markup)
end
if text == "الاعدادات" then    
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Text = "*\n☆︙اعدادات المجموعه ".."\n🔏︙علامة ال (✔️) تعني مقفول".."\n🔓︙علامة ال (❌) تعني مفتوح*"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(msg_chat_id).lock_links, data = '&'},{text = 'الروابط : ', data =msg.sender.user_id..'/'.. 'Status_link'},
},
{
{text = GetSetieng(msg_chat_id).lock_spam, data = '&'},{text = 'الكلايش : ', data =msg.sender.user_id..'/'.. 'Status_spam'},
},
{
{text = GetSetieng(msg_chat_id).lock_inlin, data = '&'},{text = 'الكيبورد : ', data =msg.sender.user_id..'/'.. 'Status_keypord'},
},
{
{text = GetSetieng(msg_chat_id).lock_vico, data = '&'},{text = 'الاغاني : ', data =msg.sender.user_id..'/'.. 'Status_voice'},
},
{
{text = GetSetieng(msg_chat_id).lock_gif, data = '&'},{text = 'المتحركه : ', data =msg.sender.user_id..'/'.. 'Status_gif'},
},
{
{text = GetSetieng(msg_chat_id).lock_file, data = '&'},{text = 'الملفات : ', data =msg.sender.user_id..'/'.. 'Status_files'},
},
{
{text = GetSetieng(msg_chat_id).lock_text, data = '&'},{text = 'الدردشه : ', data =msg.sender.user_id..'/'.. 'Status_text'},
},
{
{text = GetSetieng(msg_chat_id).lock_ved, data = '&'},{text = 'الفيديو : ', data =msg.sender.user_id..'/'.. 'Status_video'},
},
{
{text = GetSetieng(msg_chat_id).lock_photo, data = '&'},{text = 'الصور : ', data =msg.sender.user_id..'/'.. 'Status_photo'},
},
{
{text = GetSetieng(msg_chat_id).lock_user, data = '&'},{text = 'المعرفات : ', data =msg.sender.user_id..'/'.. 'Status_username'},
},
{
{text = GetSetieng(msg_chat_id).lock_hash, data = '&'},{text = 'التاك : ', data =msg.sender.user_id..'/'.. 'Status_tags'},
},
{
{text = GetSetieng(msg_chat_id).lock_bots, data = '&'},{text = 'البوتات : ', data =msg.sender.user_id..'/'.. 'Status_bots'},
},
{
{text = '- التالي ... ', data =msg.sender.user_id..'/'.. 'NextSeting'}
},
{
{text = '- اخفاء الامر ', data =msg.sender.user_id..'/'.. 'delAmr'}
},
}
}
return LuaTele.sendText(msg_chat_id, msg_id, Text, 'md', false, false, false, false, reply_markup)
end  


if text == 'المجموعه' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Chats = LuaTele.getSupergroupFullInfo(msg_chat_id)
local Get_Chat = LuaTele.getChat(msg_chat_id)
if Get_Chat.permissions.can_add_web_page_previews then
web = '❬ ✔️ ❭' else web = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_change_info then
info = '❬ ✔️ ❭' else info = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_invite_users then
invite = '❬ ✔️ ❭' else invite = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_pin_messages then
pin = '❬ ✔️ ❭' else pin = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_media_messages then
media = '❬ ✔️ ❭' else media = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_messages then
messges = '❬ ✔️ ❭' else messges = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_other_messages then
other = '❬ ✔️ ❭' else other = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_polls then
polls = '❬ ✔️ ❭' else polls = '❬ ❌ ❭'
end
local permissions = '*\n☆︙صلاحيات المجموعه :\n— — — — — — — — —'..'\n☆︙ارسال الويب : '..web..'\n☆︙تغيير معلومات المجموعه : '..info..'\n☆︙اضافه مستخدمين : '..invite..'\n☆︙تثبيت الرسائل : '..pin..'\n☆︙ارسال الميديا : '..media..'\n☆︙ارسال الرسائل : '..messges..'\n☆︙اضافه البوتات : '..other..'\n☆︙ارسال استفتاء : '..polls..'*\n\n'
local TextChat = '*\n☆︙معلومات المجموعه :\n— — — — — — — — —'..' \n☆︙عدد الادمنيه : ❬ '..Info_Chats.administrator_count..' ❭\n☆︙عدد المحظورين : ❬ '..Info_Chats.banned_count..' ❭\n☆︙عدد الاعضاء : ❬ '..Info_Chats.member_count..' ❭\n☆︙عدد المقيديين : ❬ '..Info_Chats.restricted_count..' ❭\n☆︙اسم المجموعه : ❬* ['..Get_Chat.title..']('..Info_Chats.invite_link.invite_link..')* ❭*'
return LuaTele.sendText(msg_chat_id,msg_id, TextChat..permissions,"md",true)
end
if text == 'صلاحيات المجموعه' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Get_Chat = LuaTele.getChat(msg_chat_id)
if Get_Chat.permissions.can_add_web_page_previews then
web = '❬ ✔️ ❭' else web = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_change_info then
info = '❬ ✔️ ❭' else info = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_invite_users then
invite = '❬ ✔️ ❭' else invite = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_pin_messages then
pin = '❬ ✔️ ❭' else pin = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_media_messages then
media = '❬ ✔️ ❭' else media = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_messages then
messges = '❬ ✔️ ❭' else messges = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_other_messages then
other = '❬ ✔️ ❭' else other = '❬ ❌ ❭'
end
if Get_Chat.permissions.can_send_polls then
polls = '❬ ✔️ ❭' else polls = '❬ ❌ ❭'
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '- ارسال الويب : '..web, data = msg.sender.user_id..'/web'}, 
},
{
{text = '- تغيير معلومات المجموعه : '..info, data =msg.sender.user_id..  '/info'}, 
},
{
{text = '- اضافه مستخدمين : '..invite, data =msg.sender.user_id..  '/invite'}, 
},
{
{text = '- تثبيت الرسائل : '..pin, data =msg.sender.user_id..  '/pin'}, 
},
{
{text = '- ارسال الميديا : '..media, data =msg.sender.user_id..  '/media'}, 
},
{
{text = '- ارسال الرسائل : .'..messges, data =msg.sender.user_id..  '/messges'}, 
},
{
{text = '- اضافه البوتات : '..other, data =msg.sender.user_id..  '/other'}, 
},
{
{text = '- ارسال استفتاء : '..polls, data =msg.sender.user_id.. '/polls'}, 
},
{
{text = '- اخفاء الامر ', data =msg.sender.user_id..'/'.. '/delAmr'}
},
}
}
return LuaTele.sendText(msg_chat_id, msg_id, "☆︙ الصلاحيات - ", 'md', false, false, false, false, reply_markup)
end
if text == 'تنزيل الكل' and msg.reply_to_message_id ~= 0 then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if Redis:sismember(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id) then
dev = "المطور ،" else dev = "" end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, Message_Reply.sender.user_id) then
crr = "منشئ اساسي ،" else crr = "" end
if Redis:sismember(BLANK..'BLANK:Originators:Group'..msg_chat_id, Message_Reply.sender.user_id) then
cr = "منشئ ،" else cr = "" end
if Redis:sismember(BLANK..'BLANK:Managers:Group'..msg_chat_id, Message_Reply.sender.user_id) then
own = "مدير ،" else own = "" end
if Redis:sismember(BLANK..'BLANK:Addictive:Group'..msg_chat_id, Message_Reply.sender.user_id) then
mod = "ادمن ،" else mod = "" end
if Redis:sismember(BLANK..'BLANK:Distinguished:Group'..msg_chat_id, Message_Reply.sender.user_id) then
vip = "مميز ،" else vip = ""
end
if The_ControllerAll(Message_Reply.sender.user_id) == true then
Rink = 1
elseif Redis:sismember(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id)  then
Rink = 2
elseif Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, Message_Reply.sender.user_id) then
Rink = 3
elseif Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id, Message_Reply.sender.user_id) then
Rink = 4
elseif Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id, Message_Reply.sender.user_id) then
Rink = 5
elseif Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id, Message_Reply.sender.user_id) then
Rink = 6
elseif Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id) then
Rink = 7
else
Rink = 8
end
if StatusCanOrNotCan(msg_chat_id,Message_Reply.sender.user_id) == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙ليس لديه اي رتبه هنا *","md",true)  
end
if msg.ControllerBot then
if Rink == 1 or Rink < 1 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Developers:Groups",Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id)
elseif msg.Developers then
if Rink == 2 or Rink < 2 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id)
elseif msg.TheBasics then
if Rink == 3 or Rink < 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id)
elseif msg.Originators then
if Rink == 4 or Rink < 4 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id)
elseif msg.Managers then
if Rink == 5 or Rink < 5 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, Message_Reply.sender.user_id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id)
elseif msg.Addictive then
if Rink == 6 or Rink < 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, Message_Reply.sender.user_id)
end
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙تم تنزيل الشخص من الرتب التاليه { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." *}","md",true)  
end

if text and text:match('^تنزيل الكل @(%S+)$') then
local UserName = text:match('^تنزيل الكل @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
if Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId_Info.id) then
dev = "المطور ،" else dev = "" end
if Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, UserId_Info.id) then
crr = "منشئ اساسي ،" else crr = "" end
if Redis:sismember(BLANK..'BLANK:Originators:Group'..msg_chat_id, UserId_Info.id) then
cr = "منشئ ،" else cr = "" end
if Redis:sismember(BLANK..'BLANK:Managers:Group'..msg_chat_id, UserId_Info.id) then
own = "مدير ،" else own = "" end
if Redis:sismember(BLANK..'BLANK:Addictive:Group'..msg_chat_id, UserId_Info.id) then
mod = "ادمن ،" else mod = "" end
if Redis:sismember(BLANK..'BLANK:Distinguished:Group'..msg_chat_id, UserId_Info.id) then
vip = "مميز ،" else vip = ""
end
if The_ControllerAll(UserId_Info.id) == true then
Rink = 1
elseif Redis:sismember(BLANK.."BLANK:Developers:Groups",UserId_Info.id)  then
Rink = 2
elseif Redis:sismember(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, UserId_Info.id) then
Rink = 3
elseif Redis:sismember(BLANK.."BLANK:Originators:Group"..msg_chat_id, UserId_Info.id) then
Rink = 4
elseif Redis:sismember(BLANK.."BLANK:Managers:Group"..msg_chat_id, UserId_Info.id) then
Rink = 5
elseif Redis:sismember(BLANK.."BLANK:Addictive:Group"..msg_chat_id, UserId_Info.id) then
Rink = 6
elseif Redis:sismember(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id) then
Rink = 7
else
Rink = 8
end
if StatusCanOrNotCan(msg_chat_id,UserId_Info.id) == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙ليس لديه اي رتبه هنا *","md",true)  
end
if msg.ControllerBot then
if Rink == 1 or Rink < 1 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Developers:Groups",UserId_Info.id)
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id)
elseif msg.Developers then
if Rink == 2 or Rink < 2 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:TheBasics:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id)
elseif msg.TheBasics then
if Rink == 3 or Rink < 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Originators:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id)
elseif msg.Originators then
if Rink == 4 or Rink < 4 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Managers:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id)
elseif msg.Managers then
if Rink == 5 or Rink < 5 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Addictive:Group"..msg_chat_id, UserId_Info.id)
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id)
elseif msg.Addictive then
if Rink == 6 or Rink < 6 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكن تنزيل رتبه نفس رتبتك ولا اعلى من رتبتك *","md",true)  
end
Redis:srem(BLANK.."BLANK:Distinguished:Group"..msg_chat_id, UserId_Info.id)
end
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙تم تنزيل الشخص من الرتب التاليه { "..dev..""..crr..""..cr..""..own..""..mod..""..vip.." *}","md",true)  
end

if text == ('رفع مشرف') and msg.reply_to_message_id ~= 0 then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).SetAdmin == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه اضافة مشرفين* ',"md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
local SetAdmin = LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'administrator',{1 ,1, 0, 0, 0, 0, 0 , 0, 0, 0, 0, 0, ''})
if SetAdmin.code == 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكنني رفعه ليس لدي صلاحيات *","md",true)  
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '- تعديل الصلاحيات ', data = msg.sender.user_id..'/groupNumseteng//'..Message_Reply.sender.user_id}, 
},
}
}
return LuaTele.sendText(msg_chat_id, msg_id, "☆︙ صلاحيات المستخدم - ", 'md', false, false, false, false, reply_markup)
end
if text and text:match('^رفع مشرف @(%S+)$') then
local UserName = text:match('^رفع مشرف @(%S+)$')
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).SetAdmin == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه اضافة مشرفين* ',"md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
local SetAdmin = LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'administrator',{1 ,1, 0, 0, 0, 0, 0 , 0, 0, 0, 0, 0, ''})
if SetAdmin.code == 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكنني رفعه ليس لدي صلاحيات *","md",true)  
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '- تعديل الصلاحيات ', data = msg.sender.user_id..'/groupNumseteng//'..UserId_Info.id}, 
},
}
}
return LuaTele.sendText(msg_chat_id, msg_id, "☆︙ صلاحيات المستخدم - ", 'md', false, false, false, false, reply_markup)
end 
if text == ('تنزيل مشرف') and msg.reply_to_message_id ~= 0 then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).SetAdmin == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه اضافة مشرفين* ',"md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
local SetAdmin = LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'administrator',{0 ,0, 0, 0, 0, 0, 0 ,0, 0})
if SetAdmin.code == 400 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لست انا من قام برفعه *","md",true)  
end
if SetAdmin.code == 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكنني تنزيله ليس لدي صلاحيات *","md",true)  
end
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم تنزيله من المشرفين ").Reply,"md",true)  
end
if text and text:match('^تنزيل مشرف @(%S+)$') then
local UserName = text:match('^تنزيل مشرف @(%S+)$')
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).SetAdmin == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه اضافة مشرفين* ',"md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
local SetAdmin = LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'administrator',{0 ,0, 0, 0, 0, 0, 0 ,0, 0})
if SetAdmin.code == 400 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لست انا من قام برفعه *","md",true)  
end
if SetAdmin.code == 3 then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا يمكنني تنزيله ليس لدي صلاحيات *","md",true)  
end
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(UserId_Info.id,"☆︙تم تنزيله من المشرفين ").Reply,"md",true)  
end 
if text == 'مسح رسائلي' then
Redis:del(BLANK..'BLANK:Num:Message:User'..msg.chat_id..':'..msg.sender.user_id)
LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم مسح جميع رسائلك ',"md",true)  
elseif text == 'مسح سحكاتي' or text == 'مسح تعديلاتي' then
Redis:del(BLANK..'BLANK:Num:Message:Edit'..msg.chat_id..':'..msg.sender.user_id)
LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم مسح جميع تعديلاتك ',"md",true)  
elseif text == 'مسح جهاتي' then
Redis:del(BLANK..'BLANK:Num:Add:Memp'..msg.chat_id..':'..msg.sender.user_id)
LuaTele.sendText(msg_chat_id,msg_id,'☆︙تم مسح جميع جهاتك المضافه ',"md",true)  
elseif text == 'رسائلي' then
LuaTele.sendText(msg_chat_id,msg_id,'☆︙عدد رسائلك هنا *~ '..(Redis:get(BLANK..'BLANK:Num:Message:User'..msg.chat_id..':'..msg.sender.user_id) or 1)..'*',"md",true)  
elseif text == 'سحكاتي' or text == 'تعديلاتي' then
LuaTele.sendText(msg_chat_id,msg_id,'☆︙عدد التعديلات هنا *~ '..(Redis:get(BLANK..'BLANK:Num:Message:Edit'..msg.chat_id..msg.sender.user_id) or 0)..'*',"md",true)  
elseif text == 'جهاتي' then
LuaTele.sendText(msg_chat_id,msg_id,'☆︙عدد جهاتك المضافه هنا *~ '..(Redis:get(BLANK.."BLANK:Num:Add:Memp"..msg.chat_id..":"..msg.sender.user_id) or 0)..'*',"md",true)  
elseif text == 'مسح' and msg.reply_to_message_id ~= 0 and msg.Addictive then
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if GetInfoBot(msg).Delmsg == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حذف الرسائل* ',"md",true)  
end
LuaTele.deleteMessages(msg.chat_id,{[1]= msg.reply_to_message_id})
LuaTele.deleteMessages(msg.chat_id,{[1]= msg_id})
end

if text == 'تعين الايدي عام' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 'https://t.me/C_T_V_blank'}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n•عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Redis:Id:Groups"..msg.chat_id..""..msg.sender.user_id,240,true)  
return LuaTele.sendText(msg_chat_id,msg_id,[[
•ارسل الان النص
•يمكنك اضافه :
•`#username` » اسم المستخدم
•`#msgs` » عدد الرسائل
•`#photos` » عدد الصور
•`#id` » ايدي المستخدم
•`#auto` » نسبة التفاعل
•`#stast` » رتبة المستخدم 
•`#edit` » عدد السحكات
•`#game` » عدد المجوهرات
•`#AddMem` » عدد الجهات
•`#Description` » تعليق الصوره
]],"md",true)    
end 
if text == 'حذف الايدي عام' or text == 'مسح الايدي عام' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 'https://t.me/C_T_V_blank'}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n•عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Set:Id:Groups")
return LuaTele.sendText(msg_chat_id,msg_id, '☆︙تم ازالة كليشة الايدي العامه',"md",true)  
end
if text == 'تعين الايدي' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Redis:Id:Group"..msg.chat_id..""..msg.sender.user_id,240,true)  
return LuaTele.sendText(msg_chat_id,msg_id,[[
☆︙ارسل الان النص
☆︙يمكنك اضافه :
☆︙`#username` » اسم المستخدم
☆︙`#msgs` » عدد الرسائل
☆︙`#photos` » عدد الصور
☆︙`#id` » ايدي المستخدم
☆︙`#auto` » نسبة التفاعل
☆︙`#stast` » رتبة المستخدم 
☆︙`#edit` » عدد السحكات
☆︙`#game` » عدد المجوهرات
☆︙`#AddMem` » عدد الجهات
☆︙`#Description` » تعليق الصوره
]],"md",true)    
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Set:Id:Group"..msg.chat_id)
return LuaTele.sendText(msg_chat_id,msg_id, '☆︙تم ازالة كليشة الايدي ',"md",true)  
end

if text and text:match("^مسح (.*)$") and msg.reply_to_message_id == 0 then
local TextMsg = text:match("^مسح (.*)$")
if TextMsg == 'المطورين الثانوين' or TextMsg == 'المطورين الثانويين' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:DevelopersQ:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين ثانوين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:DevelopersQ:Groups") 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المطورين الثانويين*","md",true)
end
if TextMsg == 'المطورين' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Developers:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:Developers:Groups") 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المطورين *","md",true)
end
if TextMsg == 'المنشئين الاساسيين' then
if LuaTele.getChatMember(msg_chat_id,msg.sender.user_id).status.luatele ~= "chatMemberStatusCreator" or not msg.Developers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:TheBasics:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد منشئين اساسيين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:TheBasics:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المنشؤين الاساسيين *","md",true)
end
if TextMsg == 'المنشئين' then
if not msg.TheBasics then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(4)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Originators:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد منشئين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:Originators:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المنشئين *","md",true)
end
if TextMsg == 'المدراء' then
if not msg.Originators then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(5)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Managers:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مدراء حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:Managers:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المدراء *","md",true)
end
if TextMsg == 'الادمنيه' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Addictive:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد ادمنيه حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:Addictive:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من الادمنيه *","md",true)
end
if TextMsg == 'المميزين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Distinguished:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مميزين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:Distinguished:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المميزين *","md",true)
end
if TextMsg == 'المحظورين عام' or TextMsg == 'قائمه العام' then
if not msg.DevelopersQ then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(2)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:BanAll:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد محظورين عام حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:BanAll:Groups") 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المحظورين عام *","md",true)
end
if TextMsg == 'المحظورين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:BanGroup:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد محظورين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:BanGroup:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المحظورين *","md",true)
end
if TextMsg == 'المكتومين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id) 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مكتومين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id) 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المكتومين *","md",true)
end
if TextMsg == 'المقيدين' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Recent", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
for k, v in pairs(List_Members) do
if Info_Members.members[k].status.is_member == true and Info_Members.members[k].status.luatele == "chatMemberStatusRestricted" then
LuaTele.setChatMemberStatus(msg.chat_id,v.member_id.user_id,'restricted',{1,1,1,1,1,1,1,1})
x = x + 1
end
end
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..x.."} من المقيديين *","md",true)
end
if TextMsg == 'البوتات' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Bots", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
for k, v in pairs(List_Members) do
local Ban_Bots = LuaTele.setChatMemberStatus(msg.chat_id,v.member_id.user_id,'banned',0)
if Ban_Bots.luatele == "ok" then
x = x + 1
end
end
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عدد البوتات الموجوده : "..#List_Members.."\n☆︙تم طرد ( "..x.." ) بوت من المجموعه *","md",true)  
end
if TextMsg == 'المطرودين' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local Info_Members = LuaTele.getSupergroupMembers(msg_chat_id, "Banned", "*", 0, 200)
x = 0
local List_Members = Info_Members.members
for k, v in pairs(List_Members) do
UNBan_Bots = LuaTele.setChatMemberStatus(msg.chat_id,v.member_id.user_id,'restricted',{1,1,1,1,1,1,1,1,1})
if UNBan_Bots.luatele == "ok" then
x = x + 1
end
end
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عدد المطرودين في الموجوده : "..#List_Members.."\n☆︙تم الغاء الحظر عن ( "..x.." ) من الاشخاص*","md",true)  
end
if TextMsg == 'المحذوفين' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
if GetInfoBot(msg).BanUser == false then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙البوت ليس لديه صلاحيه حظر المستخدمين* ',"md",true)  
end
local Info_Members = LuaTele.searchChatMembers(msg_chat_id, "*", 200)
local List_Members = Info_Members.members
x = 0
for k, v in pairs(List_Members) do
local UserInfo = LuaTele.getUser(v.member_id.user_id)
if UserInfo.type.luatele == "userTypeDeleted" then
local userTypeDeleted = LuaTele.setChatMemberStatus(msg.chat_id,v.member_id.user_id,'banned',0)
if userTypeDeleted.luatele == "ok" then
x = x + 1
end
end
end
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙تم طرد ( "..x.." ) حساب محذوف *","md",true)  
end
end


if text == ("مسح ردود المدير") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Manager"..msg_chat_id.."")
for k,v in pairs(list) do
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Gif"..v..msg_chat_id)   
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Vico"..v..msg_chat_id)   
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..v..msg_chat_id)     
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Text"..v..msg_chat_id)   
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Photo"..v..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Video"..v..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:File"..v..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:video_note"..v..msg_chat_id)
Redis:del(BLANK.."BLANK:Add:Rd:Manager:Audio"..v..msg_chat_id)
Redis:del(BLANK.."BLANK:List:Manager"..msg_chat_id)
end
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم مسح قائمه ردود المدير","md",true)  
end
if text == ("ردود المدير") then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Manager"..msg_chat_id.."")
text = "☆︙قائمه ردود المدير \n— — — — — — — — —\n"
for k,v in pairs(list) do
if Redis:get(BLANK.."BLANK:Add:Rd:Manager:Gif"..v..msg_chat_id) then
db = "متحركه 🎭"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:Vico"..v..msg_chat_id) then
db = "بصمه 📢"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:Stekrs"..v..msg_chat_id) then
db = "ملصق 🃏"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:Text"..v..msg_chat_id) then
db = "رساله ✉"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:Photo"..v..msg_chat_id) then
db = "صوره 🎇"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:Video"..v..msg_chat_id) then
db = "فيديو 📹"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:File"..v..msg_chat_id) then
db = "ملف •"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:Audio"..v..msg_chat_id) then
db = "اغنيه 🎵"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Manager:video_note"..v..msg_chat_id) then
db = "بصمه فيديو 🎥"
end
text = text..""..k.." » {"..v.."} » {"..db.."}\n"
end
if #list == 0 then
text = "☆︙عذرا لا يوجد ردود للمدير في المجموعه"
end
return LuaTele.sendText(msg_chat_id,msg_id,"["..text.."]","md",true)  
end
if text == "اضف رد" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الكلمه لاضافتها في ردود المدير ","md",true)  
end
if text == "حذف رد" then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Set:Manager:rd"..msg.sender.user_id..":"..msg_chat_id,"true2")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الكلمه لحذفها من ردود المدير","md",true)  
end
if text == ("مسح ردود المطور") then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Rd:Sudo")
for k,v in pairs(list) do
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Gif"..v)   
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:vico"..v)   
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:stekr"..v)     
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Text"..v)   
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Photo"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Video"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:File"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Audio"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:video_note"..v)
Redis:del(BLANK.."BLANK:List:Rd:Sudo")
end
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف ردود المطور","md",true)  
end
if text == ("ردود المطور") then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Rd:Sudo")
text = "\n📝︙قائمة ردود المطور \n— — — — — — — — —\n"
for k,v in pairs(list) do
if Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Gif"..v) then
db = "متحركه 🎭"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:vico"..v) then
db = "بصمه 📢"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:stekr"..v) then
db = "ملصق 🃏"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Text"..v) then
db = "رساله ✉"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Photo"..v) then
db = "صوره 🎇"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Video"..v) then
db = "فيديو 📹"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:File"..v) then
db = "ملف •"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Audio"..v) then
db = "اغنيه 🎵"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:video_note"..v) then
db = "بصمه فيديو 🎥"
end
text = text..""..k.." » {"..v.."} » {"..db.."}\n"
end
if #list == 0 then
text = "☆︙لا توجد ردود للمطور"
end
return LuaTele.sendText(msg_chat_id,msg_id,"["..text.."]","md",true)  
end
if text == "اضف رد للكل" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Set:Rd"..msg.sender.user_id..":"..msg_chat_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الكلمه لاضافتها في ردود المطور ","md",true)  
end
if text == "حذف رد للكل" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Set:On"..msg.sender.user_id..":"..msg_chat_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الكلمه لحذفها من ردود المطور","md",true)  
end
if text=="اذاعه خاص" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Users" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسل لي سواء كان 
❨ ملف • ملصق • متحركه • صوره
 • فيديو • بصمه الفيديو • بصمه • صوت • رساله ❩
— — — — — — — — —
↯︙للخروج ارسل ( الغاء )
 ✓
]],"md",true)  
return false
end

if text=="اذاعه" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Groups" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسل لي سواء كان 
❨ ملف • ملصق • متحركه • صوره
 • فيديو • بصمه الفيديو • بصمه • صوت • رساله ❩
— — — — — — — — —
↯︙للخروج ارسل ( الغاء )
 ✓
]],"md",true)  
return false
end

if text=="اذاعه بالتثبيت" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Groups:Pin" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسل لي سواء كان 
❨ ملف • ملصق • متحركه • صوره
 • فيديو • بصمه الفيديو • بصمه • صوت • رساله ❩
— — — — — — — — —
↯︙للخروج ارسل ( الغاء )
 ✓
]],"md",true)  
return false
end

if text=="اذاعه بالتوجيه" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Groups:Fwd" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي التوجيه الان\n☆︙ليتم نشره في المجموعات","md",true)  
return false
end

if text=="اذاعه خاص بالتوجيه" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Users:Fwd" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي التوجيه الان\n☆︙ليتم نشره الى المشتركين","md",true)  
return false
end
if text == 'كشف القيود' and msg.reply_to_message_id ~= 0 then
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local GetMemberStatus = LuaTele.getChatMember(msg_chat_id,Message_Reply.sender.user_id).status
if GetMemberStatus.luatele == "chatMemberStatusRestricted" then
Restricted = 'مقيد'
else
Restricted = 'غير مقيد'
end
if Statusrestricted(msg_chat_id,Message_Reply.sender.user_id).BanAll == true then
BanAll = 'محظور عام'
else
BanAll = 'غير محظور عام'
end
if Statusrestricted(msg_chat_id,Message_Reply.sender.user_id).BanGroup == true then
BanGroup = 'محظور'
else
BanGroup = 'غير محظور'
end
if Statusrestricted(msg_chat_id,Message_Reply.sender.user_id).SilentGroup == true then
SilentGroup = 'مكتوم'
else
SilentGroup = 'غير مكتوم'
end
LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙معلومات الكشف \n— — — — — — — — —"..'\n☆︙الحظر العام : '..BanAll..'\n☆︙الحظر : '..BanGroup..'\n☆︙الكتم : '..SilentGroup..'\n☆︙التقييد : '..Restricted..'*',"md",true)  
end
if text and text:match('^كشف القيود @(%S+)$') then
local UserName = text:match('^كشف القيود @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
local GetMemberStatus = LuaTele.getChatMember(msg_chat_id,UserId_Info.id).status
if GetMemberStatus.luatele == "chatMemberStatusRestricted" then
Restricted = 'مقيد'
else
Restricted = 'غير مقيد'
end
if Statusrestricted(msg_chat_id,UserId_Info.id).BanAll == true then
BanAll = 'محظور عام'
else
BanAll = 'غير محظور عام'
end
if Statusrestricted(msg_chat_id,UserId_Info.id).BanGroup == true then
BanGroup = 'محظور'
else
BanGroup = 'غير محظور'
end
if Statusrestricted(msg_chat_id,UserId_Info.id).SilentGroup == true then
SilentGroup = 'مكتوم'
else
SilentGroup = 'غير مكتوم'
end
LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙معلومات الكشف \n— — — — — — — — —"..'\n☆︙الحظر العام : '..BanAll..'\n☆︙الحظر : '..BanGroup..'\n☆︙الكتم : '..SilentGroup..'\n☆︙التقييد : '..Restricted..'*',"md",true)  
end
if text == 'رفع القيود' and msg.reply_to_message_id ~= 0 then
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local GetMemberStatus = LuaTele.getChatMember(msg_chat_id,Message_Reply.sender.user_id).status
if GetMemberStatus.luatele == "chatMemberStatusRestricted" then
Restricted = 'مقيد'
LuaTele.setChatMemberStatus(msg.chat_id,Message_Reply.sender.user_id,'restricted',{1,1,1,1,1,1,1,1})
else
Restricted = ''
end
if Statusrestricted(msg_chat_id,Message_Reply.sender.user_id).BanAll == true and msg.ControllerBot then
BanAll = 'محظور عام ,'
Redis:srem(BLANK.."BLANK:BanAll:Groups",Message_Reply.sender.user_id) 
else
BanAll = ''
end
if Statusrestricted(msg_chat_id,Message_Reply.sender.user_id).BanGroup == true then
BanGroup = 'محظور ,'
Redis:srem(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) 
else
BanGroup = ''
end
if Statusrestricted(msg_chat_id,Message_Reply.sender.user_id).SilentGroup == true then
SilentGroup = 'مكتوم ,'
Redis:srem(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,Message_Reply.sender.user_id) 
else
SilentGroup = ''
end
LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙تم رفع القيود عنه : {"..BanAll..BanGroup..SilentGroup..Restricted..'}*',"md",true)  
end
if text and text:match('^رفع القيود @(%S+)$') then
local UserName = text:match('^رفع القيود @(%S+)$')
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if msg.can_be_deleted_for_all_users == false then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙عذرآ البوت ليس ادمن في المجموعه يرجى ترقيته وتفعيل الصلاحيات له *","md",true)  
end
local UserId_Info = LuaTele.searchPublicChat(UserName)
if not UserId_Info.id then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا يوجد حساب بهاذا المعرف ","md",true)  
end
if UserId_Info.type.is_channel == true then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف قناة او كروب ","md",true)  
end
if UserName and UserName:match('(%S+)[Bb][Oo][Tt]') then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام معرف البوت ","md",true)  
end
local GetMemberStatus = LuaTele.getChatMember(msg_chat_id,UserId_Info.id).status
if GetMemberStatus.luatele == "chatMemberStatusRestricted" then
Restricted = 'مقيد'
LuaTele.setChatMemberStatus(msg.chat_id,UserId_Info.id,'restricted',{1,1,1,1,1,1,1,1})
else
Restricted = ''
end
if Statusrestricted(msg_chat_id,UserId_Info.id).BanAll == true and msg.ControllerBot then
BanAll = 'محظور عام ,'
Redis:srem(BLANK.."BLANK:BanAll:Groups",UserId_Info.id) 
else
BanAll = ''
end
if Statusrestricted(msg_chat_id,UserId_Info.id).BanGroup == true then
BanGroup = 'محظور ,'
Redis:srem(BLANK.."BLANK:BanGroup:Group"..msg_chat_id,UserId_Info.id) 
else
BanGroup = ''
end
if Statusrestricted(msg_chat_id,UserId_Info.id).SilentGroup == true then
SilentGroup = 'مكتوم ,'
Redis:srem(BLANK.."BLANK:SilentGroup:Group"..msg_chat_id,UserId_Info.id) 
else
SilentGroup = ''
end
LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙تم رفع القيود عنه : {"..BanAll..BanGroup..SilentGroup..Restricted..'}*',"md",true)  
end

if text == 'وضع كليشه المطور' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK..'BLANK:GetTexting:DevBLANK'..msg_chat_id..':'..msg.sender.user_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙ ارسل لي الكليشه الان')
end
if text == 'مسح كليشة المطور' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK..'BLANK:Texting:DevBLANK')
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙ تم حذف كليشه المطور')
end
if text == 'المطور' or text == 'مطور' then
local TextingDevBLANK = Redis:get(BLANK..'BLANK:Texting:DevBLANK')
if TextingDevBLANK then 
return LuaTele.sendText(msg_chat_id,msg_id,TextingDevBLANK,"md",true)  
else
local photo = LuaTele.getUserProfilePhotos(Sudo_Id)
if photo.total_count > 0 then
local ban = LuaTele.getUser(Sudo_Id)
local T = '* ❲ مطور البوت ❳\n— — — — — — — — —\n‹ : حساب المطور : *['..ban.first_name..'](tg://user?id='..ban.id..')*\n*'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 ', url = "https://t.me/C_T_V_blank"}
},
}
local msgg = msg_id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id=" .. msg_chat_id .. "&photo="..photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id.."&caption=".. URL.escape(T).."&reply_to_message_id="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
else
return LuaTele.sendText(msg_chat_id,msg_id,'\n* ◉ مطور البوت : {*['..ban.first_name..'](tg://user?id='..ban.id..')*}*',"md",true)  
end
end
end
if text == 'السورس' or text == 'سورس' or text == 'يا سورس' or text == 'source' then
local user_info = LuaTele.getUser(msg.sender.user_id)
local first_name = user_info.first_name
local RinkBot = msg.Name_Controller
photo = "https://t.me/C_T_V_blank/12"
local Name = '*𝙒𝙀𝙇𝘾𝙊𝙈𝙀 * ['..RinkBot..'](tg://user?id='..user_info.id..')\n*◉ 𝙒𝙀𝙇𝘾𝙊𝙈𝙀 𝘽𝙍𝙊 . *\n'
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = '◉ 𝘿𝙀𝙑', url = "https://t.me/C_T_V"}
},
{
{text = '◉ 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆  .', url = "https://t.me/C_T_V_blank"}
},
{
{text = 'اضف البوت لمجموعتك', url = 't.me/'..UserBot..'?startgroup=new'}
},
}
local msgg = msg_id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id=" .. msg_chat_id .. "&photo="..photo.."&caption=".. URL.escape(Name).."&reply_to_message_id="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
elseif text == 'الاوامر' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*♡︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n♡︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = msg.sender.user_id..'/help1'}, {text = ' اوامر الادمنيه', data = msg.sender.user_id..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = msg.sender.user_id..'/help3'}, {text = 'اوامر المنشئين', data = msg.sender.user_id..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = msg.sender.user_id..'/help5'}, {text = 'الالعاب', data = msg.sender.user_id..'/help6'}, 
},
{
{text = 'اوامر القفل الفتح', data = msg.sender.user_id..'/NoNextSeting'}, {text = '  اوامر التعطيل التفعيل  ', data = msg.sender.user_id..'/listallAddorrem'}, 
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id, [[*
☆︙توجد ← 5 اوامر في البوت
— — — — — — — — —
☆︙ارسل { م1 } ← اوامر الحمايه
☆︙ارسل { م2 } ← اوامر الادمنيه
☆︙ارسل { م3 } ← اوامر المدراء
☆︙ارسل { م4 } ← اوامر المنشئين
☆︙ارسل { م5 } ← اوامر مطورين البوت
*]],"md",false, false, false, false, reply_markup)
elseif text == 'م1' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '{ قائمه الاوامر }', data = msg.sender.user_id..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙عليك استخدام اوامر التحكم بالقوائم',"md",false, false, false, false, reply_markup)
elseif text == 'م2' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '{ قائمه الاوامر }', data = msg.sender.user_id..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙عليك استخدام اوامر التحكم بالقوائم',"md",false, false, false, false, reply_markup)
elseif text == 'م3' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '{ قائمه الاوامر }', data = msg.sender.user_id..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙عليك استخدام اوامر التحكم بالقوائم',"md",false, false, false, false, reply_markup)
elseif text == 'م4' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '{ قائمه الاوامر }', data = msg.sender.user_id..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙عليك استخدام اوامر التحكم بالقوائم',"md",false, false, false, false, reply_markup)
elseif text == 'م5' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '{ قائمه الاوامر }', data = msg.sender.user_id..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙عليك استخدام اوامر التحكم بالقوائم',"md",false, false, false, false, reply_markup)
elseif text == 'الالعاب' then
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '{ قائمه الاوامر }', data = msg.sender.user_id..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙عليك استخدام اوامر التحكم بالقوائم',"md",false, false, false, false, reply_markup)
end
if text == 'تحديث' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
print('Chat Id : '..msg_chat_id)
print('User Id : '..msg_user_send_id)
LuaTele.sendText(msg_chat_id,msg_id, "☆︙ تم تحديث الملفات ♻","md",true)
dofile('BLANK.lua')  
end
if text == "تغير اسم البوت" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Change:Name:Bot"..msg.sender.user_id,300,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ ارسل لي الاسم الان ","md",true)  
end
if text == "حذف اسم البوت" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Name:Bot") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف اسم البوت ","md",true)   
end
if text == "بوت" or text == "البوت" or text == "يا بوت" or text == "Bot" then
local photo = LuaTele.getUserProfilePhotos(BLANK)
local UserInfo = LuaTele.getUser(BLANK)
for Name_User in string.gmatch(UserInfo.first_name, "[^%s]+" ) do
UserInfo.first_name = Name_User
break
end 
local NamesBot = (Redis:get(BLANK.."BLANK:Name:Bot") or "سناك")
local BotName = {
'اسمي  '..NamesBot..'🖤',
'اسمي '..NamesBot..'❤️',
'اسمي  '..NamesBot..'♥️',
'اسمي  '..NamesBot..'👍',
'اسمي  '..NamesBot..'✨',
'اسمي  '..NamesBot..'☄️',
'اسمي '..NamesBot..'💸',
'اسمي '..NamesBot..'👀',
'اسمي  '..NamesBot..'💞️',
'اسمي  '..NamesBot..'💥',
}
NamesBots = BotName[math.random(#BotName)]
if photo.total_count > 0 then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = NamesBots, url = 'https://t.me/C_T_V_blank'}, 
},
{
{text = 'أضغط لاضافه ألبوت لمجموعتك •', url = 't.me/'..UserBot..'?startgroup=new'},
},
}
msgg = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id=" .. msg_chat_id .. "&photo="..photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id.."&photo=".. URL.escape(NamesBots).."&reply_to_message_id="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
if text == (Redis:get(BLANK.."BLANK:Name:Bot") or "سناك") then
local photo = LuaTele.getUserProfilePhotos(BLANK)
local UserInfo = LuaTele.getUser(BLANK)
for Name_User in string.gmatch(UserInfo.first_name, "[^%s]+" ) do
UserInfo.first_name = Name_User
break
end 
local NamesBot = (Redis:get(BLANK.."BLANK:Name:Bot") or "سناك") 
local BotName = {
'تفضل.',
'تفضل اسمي'..NamesBot..'',
'اسمي'..NamesBot..'',
'ليا اسم اسمي'..NamesBot..'',
'ويت',
'ثانيه',
'خير؟',
'نعم',
'مش فاضيلك',
'كفرتني عايز اي',
'وه تفضل',
'معاك',
'انا '..NamesBot..'تفضل',
'انت هتصاحبني'
}
NamesBots = BotName[math.random(#BotName)]
if photo.total_count > 0 then
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = NamesBots, url = 'https://t.me/C_T_V_blank'}, 
},
{
{text = 'أضغط لاضافه البوت لمجموعتك •', url = 't.me/'..UserBot..'?startgroup=new'},
},
}
msgg = msg.id/2097152/0.5
https.request("https://api.telegram.org/bot"..Token.."/sendphoto?chat_id=" .. msg_chat_id .. "&photo="..photo.photos[1].sizes[#photo.photos[1].sizes].photo.remote.id.."&photo=".. URL.escape(NamesBots).."&reply_to_message_id="..msgg.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
if text == 'تنظيف المشتركين' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:Num:User:Pv")   
local x = 0
for k,v in pairs(list) do  
local Get_Chat = LuaTele.getChat(v)
local ChatAction = LuaTele.sendChatAction(v,'Typing')
if ChatAction.luatele ~= "ok" then
x = x + 1
Redis:srem(BLANK..'BLANK:Num:User:Pv',v)
end
end
if x ~= 0 then
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' }\n☆︙تم العثور على { '..x..' } من المشتركين حاظرين البوت*',"md")
else
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' }\n☆︙لم يتم العثور على وهميين*',"md")
end
end
if text == 'تنظيف المجموعات' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:ChekBotAdd")   
local x = 0
for k,v in pairs(list) do  
local Get_Chat = LuaTele.getChat(v)
if Get_Chat.id then
local statusMem = LuaTele.getChatMember(Get_Chat.id,BLANK)
if statusMem.status.luatele == "chatMemberStatusMember" then
x = x + 1
LuaTele.sendText(Get_Chat.id,0,'*☆︙البوت عظو في المجموعه سوف اغادر ويمكنك تفعيلي مره اخره *',"md")
Redis:srem(BLANK..'BLANK:ChekBotAdd',Get_Chat.id)
local keys = Redis:keys(BLANK..'*'..Get_Chat.id)
for i = 1, #keys do
Redis:del(keys[i])
end
LuaTele.leaveChat(Get_Chat.id)
end
else
x = x + 1
local keys = Redis:keys(BLANK..'*'..v)
for i = 1, #keys do
Redis:del(keys[i])
end
Redis:srem(BLANK..'BLANK:ChekBotAdd',v)
LuaTele.leaveChat(v)
end
end
if x ~= 0 then
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' } للمجموعات \n☆︙تم العثور على { '..x..' } مجموعات البوت ليس ادمن \n☆︙تم تعطيل المجموعه ومغادره البوت من الوهمي *',"md")
else
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' } للمجموعات \n☆︙لا توجد مجموعات وهميه*',"md")
end
end
if text == "سمايلات" or text == "سمايل" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
Random = {"🍏","🍎","🍐","🍊","🍋","🍉","🍇","🍓","🍈","🍒","🍑","🍍","🥥","🥝","🍅","🍆","🥑","🥦","🥒","🌶","🌽","🥕","🥔","🥖","🥐","🍞","🥨","🍟","🧀","🥚","🍳","🥓","🥩","🍗","🍖","🌭","🍔","🍠","🍕","🥪","🥙","☕️","🥤","🍶","🍺","🍻","🏀","⚽️","🏈","⚾️","🎾","🏐","🏉","🎱","🏓","🏸","🥅","🎰","🎮","🎳","🎯","🎲","🎻","🎸","🎺","🥁","🎹","🎼","🎧","🎤","🎬","🎨","🎭","🎪","🎟","🎫","🎗","🏵","🎖","🏆","🥌","🛷","🚗","🚌","🏎","🚓","🚑","🚚","🚛","🚜","⚔","🛡","🔮","🌡","💣","•","📍","📓","📗","📂","📅","📪","📫","•","📭","⏰","📺","🎚","☎️","📡"}
SM = Random[math.random(#Random)]
Redis:set(BLANK.."BLANK:Game:Smile"..msg.chat_id,SM)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يدز هاذا السمايل ? ~ {`"..SM.."`}","md",true)  
end
end
if text == "كت" or text == "كت تويت" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
local texting = {"اخر افلام شاهدتها", 
"اخر افلام شاهدتها", 
"ما هي وظفتك الحياه", 
"اعز اصدقائك ?", 
"اخر اغنية سمعتها ?", 
"تكلم عن نفسك", 
"ليه انت مش سالك", 
"اخر كتاب قرآته", 
"روايتك المفضله ?", 
"اخر اكله اكلتها", 
"اخر كتاب قرآته", 
"ليش حسين ذكي؟ ", 
"افضل يوم ف حياتك", 
"ليه مضيفتش كل جهاتك", 
"حكمتك ف الحياه", 
"لون عيونك", 
"كتابك المفضل", 
"هوايتك المفضله", 
"علاقتك مع اهلك", 
" ما السيء في هذه الحياة ؟ ", 
"أجمل شيء حصل معك خلال هذا الاسبوع ؟ ", 
"سؤال ينرفزك ؟ ", 
" اكثر ممثل تحبه ؟ ", 
"قد تخيلت شي في بالك وصار ؟ ", 
"شيء عندك اهم من الناس ؟ ", 
"تفضّل النقاش الطويل او تحب الاختصار ؟ ", 
"وش أخر شي ضيعته؟ ", 
"كم مره حبيت؟ ", 
" اكثر المتابعين عندك باي برنامج؟", 
" آخر مره ضربت عشره كانت متى ؟", 
" نسبه الندم عندك للي وثقت فيهم ؟", 
"تحب ترتبط بكيرفي ولا فلات؟", 
" جربت شعور احد يحبك بس انت مو قادر تحبه؟", 
" تجامل الناس ولا اللي بقلبك على لسانك؟", 
" عمرك ضحيت باشياء لاجل شخص م يسوى ؟", 
"مغني تلاحظ أن صوته يعجب الجميع إلا أنت؟ ", 
" آخر غلطات عمرك؟ ", 
" مسلسل كرتوني له ذكريات جميلة عندك؟ ", 
" ما أكثر تطبيق تقضي وقتك عليه؟ ", 
" أول شيء يخطر في بالك إذا سمعت كلمة نجوم ؟ ", 
" قدوتك من الأجيال السابقة؟ ", 
" أكثر طبع تهتم بأن يتواجد في شريك/ة حياتك؟ ", 
"أكثر حيوان تخاف منه؟ ", 
" ما هي طريقتك في الحصول على الراحة النفسية؟ ", 
" إيموجي يعبّر عن مزاجك الحالي؟ ", 
" أكثر تغيير ترغب أن تغيّره في نفسك؟ ", 
"أكثر شيء أسعدك اليوم؟ ", 
"اي رايك في الدنيا دي ؟ ", 
"ما هو أفضل حافز للشخص؟ ", 
"ما الذي يشغل بالك في الفترة الحالية؟", 
"آخر شيء ندمت عليه؟ ", 
"شاركنا صورة احترافية من تصويرك؟ ", 
"تتابع انمي؟ إذا نعم ما أفضل انمي شاهدته ", 
"يرد عليك متأخر على رسالة مهمة وبكل برود، موقفك؟ ", 
"نصيحه تبدا ب -لا- ؟ ", 
"كتاب أو رواية تقرأها هذه الأيام؟ ", 
"فيلم عالق في ذهنك لا تنساه مِن روعته؟ ", 
"يوم لا يمكنك نسيانه؟ ", 
"شعورك الحالي في جملة؟ ", 
"كلمة لشخص بعيد؟ ", 
"صفة يطلقها عليك الشخص المفضّل؟ ", 
"أغنية عالقة في ذهنك هاليومين؟ ", 
"أكلة مستحيل أن تأكلها؟ ", 
"كيف قضيت نهارك؟ ", 
"تصرُّف ماتتحمله؟ ", 
"موقف غير حياتك؟ ", 
"اكثر مشروب تحبه؟ ", 
"القصيدة اللي تأثر فيك؟ ", 
"متى يصبح الصديق غريب ", 
"وين نلقى السعاده برايك؟ ", 
"تاريخ ميلادك؟ ", 
"قهوه و لا شاي؟ ", 
"من محبّين الليل أو الصبح؟ ", 
"حيوانك المفضل؟ ", 
"كلمة غريبة ومعناها؟ ", 
"كم تحتاج من وقت لتثق بشخص؟ ", 
"اشياء نفسك تجربها؟ ", 
"يومك ضاع على؟ ", 
"كل شيء يهون الا ؟ ", 
"اسم ماتحبه ؟ ", 
"وقفة إحترام للي إخترع ؟ ", 
"أقدم شيء محتفظ فيه من صغرك؟ ", 
"كلمات ماتستغني عنها بسوالفك؟ ", 
"وش الحب بنظرك؟ ", 
"حب التملك في شخصِيـتك ولا ؟ ", 
"تخطط للمستقبل ولا ؟ ", 
"موقف محرج ماتنساه ؟ ", 
"من طلاسم لهجتكم ؟ ", 
"اعترف باي حاجه ؟ ", 
"عبّر عن مودك بصوره ؟ ",
"آخر مره ضربت عشره كانت متى ؟", 
"اسم دايم ع بالك ؟ ", 
"اشياء تفتخر انك م سويتها ؟ ", 
" لو بكيفي كان ؟ ", 
  "أكثر جملة أثرت بك في حياتك؟ ",
  "إيموجي يوصف مزاجك حاليًا؟ ",
  "أجمل اسم بنت بحرف الباء؟ ",
  "كيف هي أحوال قلبك؟ ",
  "أجمل مدينة؟ ",
  "كيف كان أسبوعك؟ ",
  "شيء تشوفه اكثر من اهلك ؟ ",
  "اخر مره فضفضت؟ ",
  "قد كرهت احد بسبب اسلوبه؟ ",
  "قد حبيت شخص وخذلك؟ ",
  "كم مره حبيت؟ ",
  "اكبر غلطة بعمرك؟ ",
  "نسبة النعاس عندك حاليًا؟ ",
  "شرايكم بمشاهير التيك توك؟ ",
  "ما الحاسة التي تريد إضافتها للحواس الخمسة؟ ",
  "اسم قريب لقلبك؟ ",
  "مشتاق لمطعم كنت تزوره قبل الحظر؟ ",
  "أول شيء يخطر في بالك إذا سمعت كلمة (ابوي يبيك)؟ ",
  "ما أول مشروع تتوقع أن تقوم بإنشائه إذا أصبحت مليونير؟ ",
  "أغنية عالقة في ذهنك هاليومين؟ ",
  "متى اخر مره قريت قرآن؟ ",
  "كم صلاة فاتتك اليوم؟ ",
  "تفضل التيكن او السنقل؟ ",
  "وش أفضل بوت برأيك؟ ",
"كم لك بالتلي؟ ",
"وش الي تفكر فيه الحين؟ ",
"كيف تشوف الجيل ذا؟ ",
"منشن شخص وقوله، تحبني؟ ",
"لو جاء شخص وعترف لك كيف ترده؟ ",
"مر عليك موقف محرج؟ ",
"وين تشوف نفسك بعد سنتين؟ ",
"لو فزعت/ي لصديق/ه وقالك مالك دخل وش بتسوي/ين؟ ",
"وش اجمل لهجة تشوفها؟ ",
"قد سافرت؟ ",
"افضل مسلسل عندك؟ ",
"افضل فلم عندك؟ ",
"مين اكثر يخون البنات/العيال؟ ",
"متى حبيت؟ ",
  "بالعادة متى تنام؟ ",
  "شيء من صغرك ماتغير فيك؟ ",
  "شيء بسيط قادر يعدل مزاجك بشكل سريع؟ ",
  "تشوف الغيره انانيه او حب؟ ",
"حاجة تشوف نفسك مبدع فيها؟ ",
  "مع او ضد : يسقط جمال المراة بسبب قبح لسانها؟ ",
  "عمرك بكيت على شخص مات في مسلسل ؟ ",
  "‏- هل تعتقد أن هنالك من يراقبك بشغف؟ ",
  "تدوس على قلبك او كرامتك؟ ",
  "اكثر لونين تحبهم مع بعض؟ ",
  "مع او ضد : النوم افضل حل لـ مشاكل الحياة؟ ",
  "سؤال دايم تتهرب من الاجابة عليه؟ ",
  "تحبني ولاتحب الفلوس؟ ",
  "العلاقه السريه دايماً تكون حلوه؟ ",
  "لو أغمضت عينيك الآن فما هو أول شيء ستفكر به؟ ",
"كيف ينطق الطفل اسمك؟ ",
  "ما هي نقاط الضعف في شخصيتك؟ ",
  "اكثر كذبة تقولها؟ ",
  "تيكن ولا اضبطك؟ ",
  "اطول علاقة كنت فيها مع شخص؟ ",
  "قد ندمت على شخص؟ ",
  "وقت فراغك وش تسوي؟ ",
  "عندك أصحاب كثير؟ ولا ينعد بالأصابع؟ ",
  "حاط نغمة خاصة لأي شخص؟ ",
  "وش اسم شهرتك؟ ",
  "أفضل أكلة تحبه لك؟ ",
"عندك شخص تسميه ثالث والدينك؟ ",
  "عندك شخص تسميه ثالث والدينك؟ ",
  "اذا قالو لك تسافر أي مكان تبيه وتاخذ معك شخص واحد وين بتروح ومين تختار؟ ",
  "أطول مكالمة كم ساعة؟ ",
  "تحب الحياة الإلكترونية ولا الواقعية؟ ",
  "كيف حال قلبك ؟ بخير ولا مكسور؟ ",
  "أطول مدة نمت فيها كم ساعة؟ ",
  "تقدر تسيطر على ضحكتك؟ ",
  "أول حرف من اسم الحب؟ ",
  "تحب تحافظ على الذكريات ولا تمسحه؟ ",
  "اسم اخر شخص زعلك؟ ",
"وش نوع الأفلام اللي تحب تتابعه؟ ",
  "أنت انسان غامض ولا الكل يعرف عنك؟ ",
  "لو الجنسية حسب ملامحك وش بتكون جنسيتك؟ ",
  "عندك أخوان او خوات من الرضاعة؟ ",
  "إختصار تحبه؟ ",
  "إسم شخص وتحس أنه كيف؟ ",
  "وش الإسم اللي دايم تحطه بالبرامج؟ ",
  "وش برجك؟ ",
  "لو يجي عيد ميلادك تتوقع يجيك هدية؟ ",
  "اجمل هدية جاتك وش هو؟ ",
  "الصداقة ولا الحب؟ ",
"الصداقة ولا الحب؟ ",
  "الغيرة الزائدة شك؟ ولا فرط الحب؟ ",
    "هل انت دي تويت باعت باندا؟ ",
  "قد حبيت شخصين مع بعض؟ وانقفطت؟ ",
  "وش أخر شي ضيعته؟ ",
  "قد ضيعت شي ودورته ولقيته بيدك؟ ",
  "تؤمن بمقولة اللي يبيك مايحتار فيك؟ ",
  "سبب وجوك بالتليجرام؟ ",
  "تراقب شخص حاليا؟ ",
  "عندك معجبين ولا محد درا عنك؟ ",
  "لو نسبة جمالك بتكون بعدد شحن جوالك كم بتكون؟ ",
  "أنت محبوب بين الناس؟ ولاكريه؟ ",
"كم عمرك؟ ",
  "لو يسألونك وش اسم امك تجاوبهم ولا تسفل فيهم؟ ",
  "تؤمن بمقولة الصحبة تغنيك الحب؟ ",
  "وش مشروبك المفضل؟ ",
  "قد جربت الدخان بحياتك؟ وانقفطت ولا؟ ",
  "أفضل وقت للسفر؟ الليل ولا النهار؟ ",
  "انت من النوع اللي تنام بخط السفر؟ ",
  "عندك حس فكاهي ولا نفسية؟ ",
  "تبادل الكراهية بالكراهية؟ ولا تحرجه بالطيب؟ ",
  "أفضل ممارسة بالنسبة لك؟ ",
  "لو قالو لك تتخلى عن شي واحد تحبه بحياتك وش يكون؟ ",
"لو احد تركك وبعد فتره يحاول يرجعك بترجع له ولا خلاص؟ ",
  "برأيك كم العمر المناسب للزواج؟ ",
  "اذا تزوجت بعد كم بتخلف عيال؟ ",
  "فكرت وش تسمي أول اطفالك؟ ",
  "من الناس اللي تحب الهدوء ولا الإزعاج؟ ",
  "الشيلات ولا الأغاني؟ ",
  "عندكم شخص مطوع بالعايلة؟ ",
  "تتقبل النصيحة من اي شخص؟ ",
  "اذا غلطت وعرفت انك غلطان تحب تعترف ولا تجحد؟ ",
  "جربت شعور احد يحبك بس انت مو قادر تحبه؟ ",
  "دايم قوة الصداقة تكون بإيش؟ ",
"أفضل البدايات بالعلاقة بـ وش؟ ",
  "وش مشروبك المفضل؟ او قهوتك المفضلة؟ ",
  "تحب تتسوق عبر الانترنت ولا الواقع؟ ",
  "انت من الناس اللي بعد ماتشتري شي وتروح ترجعه؟ ",
  "أخر مرة بكيت متى؟ وليش؟ ",
  "عندك الشخص اللي يقلب الدنيا عشان زعلك؟ ",
  "أفضل صفة تحبه بنفسك؟ ",
  "كلمة تقولها للوالدين؟ ",
  "أنت من الناس اللي تنتقم وترد الاذى ولا تحتسب الأجر وتسامح؟ ",
  "كم عدد سنينك بالتليجرام؟ ",
  "تحب تعترف ولا تخبي؟ ",
"انت من الناس الكتومة ولا تفضفض؟ ",
  "أنت بعلاقة حب الحين؟ ",
  "عندك اصدقاء غير جنسك؟ ",
  "أغلب وقتك تكون وين؟ ",
  "لو المقصود يقرأ وش بتكتب له؟ ",
  "تحب تعبر بالكتابة ولا بالصوت؟ ",
  "عمرك كلمت فويس احد غير جنسك؟ ",
  "لو خيروك تصير مليونير ولا تتزوج الشخص اللي تحبه؟ ",
  "لو عندك فلوس وش السيارة اللي بتشتريها؟ ",
  "كم أعلى مبلغ جمعته؟ ",
  "اذا شفت احد على غلط تعلمه الصح ولا تخليه بكيفه؟ ",
"قد جربت تبكي فرح؟ وليش؟ ",
"تتوقع إنك بتتزوج اللي تحبه؟ ",
  "ما هو أمنيتك؟ ",
  "وين تشوف نفسك بعد خمس سنوات؟ ",
  "هل انت حرامي تويت بتعت باندا؟ ",
  "لو خيروك تقدم الزمن ولا ترجعه ورا؟ ",
  "لعبة قضيت وقتك فيه بالحجر المنزلي؟ ",
  "تحب تطق الميانة ولا ثقيل؟ ",
  "باقي معاك للي وعدك ما بيتركك؟ ",
  "اول ماتصحى من النوم مين تكلمه؟ ",
  "عندك الشخص اللي يكتب لك كلام كثير وانت نايم؟ ",
  "قد قابلت شخص تحبه؟ وولد ولا بنت؟ ",
   "هل انت تحب باندا؟ ",
"اذا قفطت احد تحب تفضحه ولا تستره؟ ",
  "كلمة للشخص اللي يسب ويسطر؟ ",
  "آية من القران تؤمن فيه؟ ",
  "تحب تعامل الناس بنفس المعاملة؟ ولا تكون أطيب منهم؟ ",
"حاجة ودك تغيرها هالفترة؟ ",
  "كم فلوسك حاليا وهل يكفيك ام لا؟ ",
  "وش لون عيونك الجميلة؟ ",
  "من الناس اللي تتغزل بالكل ولا بالشخص اللي تحبه بس؟ ",
  "اذكر موقف ماتنساه بعمرك؟ ",
  "وش حاب تقول للاشخاص اللي بيدخل حياتك؟ ",
  "ألطف شخص مر عليك بحياتك؟ ",
   "هل باندا لطيف؟ ",
"انت من الناس المؤدبة ولا نص نص؟ ",
  "كيف الصيد معاك هالأيام ؟ وسنارة ولاشبك؟ ",
  "لو الشخص اللي تحبه قال بدخل حساباتك بتعطيه ولا تكرشه؟ ",
  "أكثر شي تخاف منه بالحياه وش؟ ",
  "اكثر المتابعين عندك باي برنامج؟ ",
  "متى يوم ميلادك؟ ووش الهدية اللي نفسك فيه؟ ",
  "قد تمنيت شي وتحقق؟ ",
  "قلبي على قلبك مهما صار لمين تقولها؟ ",
  "وش نوع جوالك؟ واذا بتغيره وش بتأخذ؟ ",
  "كم حساب عندك بالتليجرام؟ ",
  "متى اخر مرة كذبت؟ ",
"كذبت في الاسئلة اللي مرت عليك قبل شوي؟ ",
  "تجامل الناس ولا اللي بقلبك على لسانك؟ ",
  "قد تمصلحت مع أحد وليش؟ ",
  "وين تعرفت على الشخص اللي حبيته؟ ",
  "قد رقمت او احد رقمك؟ ",
  "وش أفضل لعبته بحياتك؟ ",
  "أخر شي اكلته وش هو؟ ",
  "حزنك يبان بملامحك ولا صوتك؟ ",
  "لقيت الشخص اللي يفهمك واللي يقرا افكارك؟ ",
  "فيه شيء م تقدر تسيطر عليه ؟ ",
  "منشن شخص متحلطم م يعجبه شيء؟ ",
"اكتب تاريخ مستحيل تنساه ",
  "شيء مستحيل انك تاكله ؟ ",
  "تحب تتعرف على ناس جدد ولا مكتفي باللي عندك ؟ ",
  "انسان م تحب تتعامل معاه ابداً ؟ ",
  "شيء بسيط تحتفظ فيه؟ ",
  "فُرصه تتمنى لو أُتيحت لك ؟ ",
   "لي باندا ناك اليكس؟ ",
  "شيء مستحيل ترفضه ؟. ",
  "لو زعلت بقوة وش بيرضيك ؟ ",
  "تنام بـ اي مكان ، ولا بس غرفتك ؟ ",
  "ردك المعتاد اذا أحد ناداك ؟ ",
  "مين الي تحب يكون مبتسم دائما ؟ ",
" إحساسك في هاللحظة؟ ",
  "وش اسم اول شخص تعرفت عليه فالتلقرام ؟ ",
  "اشياء صعب تتقبلها بسرعه ؟ ",
  "شيء جميل صار لك اليوم ؟ ",
  "اذا شفت شخص يتنمر على شخص قدامك شتسوي؟ ",
  "يهمك ملابسك تكون ماركة ؟ ",
  "ردّك على شخص قال (أنا بطلع من حياتك)؟. ",
  "مين اول شخص تكلمه اذا طحت بـ مصيبة ؟ ",
  "تشارك كل شي لاهلك ولا فيه أشياء ما تتشارك؟ ",
  "كيف علاقتك مع اهلك؟ رسميات ولا ميانة؟ ",
  "عمرك ضحيت باشياء لاجل شخص م يسوى ؟ ",
"اكتب سطر من اغنية او قصيدة جا فـ بالك ؟ ",
  "شيء مهما حطيت فيه فلوس بتكون مبسوط ؟ ",
  "مشاكلك بسبب ؟ ",
  "نسبه الندم عندك للي وثقت فيهم ؟ ",
  "اول حرف من اسم شخص تقوله? بطل تفكر فيني ابي انام؟ ",
  "اكثر شيء تحس انه مات ف مجتمعنا؟ ",
  "لو صار سوء فهم بينك وبين شخص هل تحب توضحه ولا تخليه كذا  لان مالك خلق توضح ؟ ",
  "كم عددكم بالبيت؟ ",
  "عادي تتزوج من برا القبيلة؟ ",
  "أجمل شي بحياتك وش هو؟ ",
} 
return LuaTele.sendText(msg_chat_id,msg_id,texting[math.random(#texting)],'md')
end
end
if text == "الاسرع" or tect == "ترتيب" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
KlamSpeed = {"سحور","سياره","استقبال","قنفه","ايفون","بزونه","مطبخ","كرستيانو","دجاجه","مدرسه","الوان","غرفه","ثلاجه","كهوه","سفينه","العراق","محطه","طياره","رادار","منزل","مستشفى","كهرباء","تفاحه","اخطبوط","سلمون","فرنسا","برتقاله","تفاح","مطرقه","بتيته","لهانه","شباك","باص","سمكه","ذباب","تلفاز","حاسوب","انترنيت","ساحه","جسر"};
name = KlamSpeed[math.random(#KlamSpeed)]
Redis:set(BLANK.."BLANK:Game:Monotonous"..msg.chat_id,name)
name = string.gsub(name,"سحور","س ر و ح")
name = string.gsub(name,"سياره","ه ر س ي ا")
name = string.gsub(name,"استقبال","ل ب ا ت ق س ا")
name = string.gsub(name,"قنفه","ه ق ن ف")
name = string.gsub(name,"ايفون","و ن ف ا")
name = string.gsub(name,"بزونه","ز و ه ن")
name = string.gsub(name,"مطبخ","خ ب ط م")
name = string.gsub(name,"كرستيانو","س ت ا ن و ك ر ي")
name = string.gsub(name,"دجاجه","ج ج ا د ه")
name = string.gsub(name,"مدرسه","ه م د ر س")
name = string.gsub(name,"الوان","ن ا و ا ل")
name = string.gsub(name,"غرفه","غ ه ر ف")
name = string.gsub(name,"ثلاجه","ج ه ت ل ا")
name = string.gsub(name,"كهوه","ه ك ه و")
name = string.gsub(name,"سفينه","ه ن ف ي س")
name = string.gsub(name,"العراق","ق ع ا ل ر ا")
name = string.gsub(name,"محطه","ه ط م ح")
name = string.gsub(name,"طياره","ر ا ط ي ه")
name = string.gsub(name,"رادار","ر ا ر ا د")
name = string.gsub(name,"منزل","ن ز م ل")
name = string.gsub(name,"مستشفى","ى ش س ف ت م")
name = string.gsub(name,"كهرباء","ر ب ك ه ا ء")
name = string.gsub(name,"تفاحه","ح ه ا ت ف")
name = string.gsub(name,"اخطبوط","ط ب و ا خ ط")
name = string.gsub(name,"سلمون","ن م و ل س")
name = string.gsub(name,"فرنسا","ن ف ر س ا")
name = string.gsub(name,"برتقاله","ر ت ق ب ا ه ل")
name = string.gsub(name,"تفاح","ح ف ا ت")
name = string.gsub(name,"مطرقه","ه ط م ر ق")
name = string.gsub(name,"بتيته","ب ت ت ي ه")
name = string.gsub(name,"لهانه","ه ن ل ه ل")
name = string.gsub(name,"شباك","ب ش ا ك")
name = string.gsub(name,"باص","ص ا ب")
name = string.gsub(name,"سمكه","ك س م ه")
name = string.gsub(name,"ذباب","ب ا ب ذ")
name = string.gsub(name,"تلفاز","ت ف ل ز ا")
name = string.gsub(name,"حاسوب","س ا ح و ب")
name = string.gsub(name,"انترنيت","ا ت ن ر ن ي ت")
name = string.gsub(name,"ساحه","ح ا ه س")
name = string.gsub(name,"جسر","ر ج س")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يرتبها ~ {"..name.."}","md",true)  
end
end
if text == "حزوره" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
Hzora = {"الجرس","عقرب الساعه","السمك","المطر","5","الكتاب","البسمار","7","الكعبه","بيت الشعر","لهانه","انا","امي","الابره","الساعه","22","غلط","كم الساعه","البيتنجان","البيض","المرايه","الضوء","الهواء","الضل","العمر","القلم","المشط","الحفره","البحر","الثلج","الاسفنج","الصوت","بلم"};
name = Hzora[math.random(#Hzora)]
Redis:set(BLANK.."BLANK:Game:Riddles"..msg.chat_id,name)
name = string.gsub(name,"الجرس","شيئ اذا لمسته صرخ ما هوه ؟")
name = string.gsub(name,"عقرب الساعه","اخوان لا يستطيعان تمضيه اكثر من دقيقه معا فما هما ؟")
name = string.gsub(name,"السمك","ما هو الحيوان الذي لم يصعد الى سفينة نوح عليه السلام ؟")
name = string.gsub(name,"المطر","شيئ يسقط على رأسك من الاعلى ولا يجرحك فما هو ؟")
name = string.gsub(name,"5","ما العدد الذي اذا ضربته بنفسه واضفت عليه 5 يصبح ثلاثين ")
name = string.gsub(name,"الكتاب","ما الشيئ الذي له اوراق وليس له جذور ؟")
name = string.gsub(name,"البسمار","ما هو الشيئ الذي لا يمشي الا بالضرب ؟")
name = string.gsub(name,"7","عائله مؤلفه من 6 بنات واخ لكل منهن .فكم عدد افراد العائله ")
name = string.gsub(name,"الكعبه","ما هو الشيئ الموجود وسط مكة ؟")
name = string.gsub(name,"بيت الشعر","ما هو البيت الذي ليس فيه ابواب ولا نوافذ ؟ ")
name = string.gsub(name,"لهانه","وحده حلوه ومغروره تلبس مية تنوره .من هيه ؟ ")
name = string.gsub(name,"انا","ابن امك وابن ابيك وليس باختك ولا باخيك فمن يكون ؟")
name = string.gsub(name,"امي","اخت خالك وليست خالتك من تكون ؟ ")
name = string.gsub(name,"الابره","ما هو الشيئ الذي كلما خطا خطوه فقد شيئا من ذيله ؟ ")
name = string.gsub(name,"الساعه","ما هو الشيئ الذي يقول الصدق ولكنه اذا جاع كذب ؟")
name = string.gsub(name,"22","كم مره ينطبق عقربا الساعه على بعضهما في اليوم الواحد ")
name = string.gsub(name,"غلط","ما هي الكلمه الوحيده التي تلفض غلط دائما ؟ ")
name = string.gsub(name,"كم الساعه","ما هو السؤال الذي تختلف اجابته دائما ؟")
name = string.gsub(name,"البيتنجان","جسم اسود وقلب ابيض وراس اخظر فما هو ؟")
name = string.gsub(name,"البيض","ماهو الشيئ الذي اسمه على لونه ؟")
name = string.gsub(name,"المرايه","ارى كل شيئ من دون عيون من اكون ؟ ")
name = string.gsub(name,"الضوء","ما هو الشيئ الذي يخترق الزجاج ولا يكسره ؟")
name = string.gsub(name,"الهواء","ما هو الشيئ الذي يسير امامك ولا تراه ؟")
name = string.gsub(name,"الضل","ما هو الشيئ الذي يلاحقك اينما تذهب ؟ ")
name = string.gsub(name,"العمر","ما هو الشيء الذي كلما طال قصر ؟ ")
name = string.gsub(name,"القلم","ما هو الشيئ الذي يكتب ولا يقرأ ؟")
name = string.gsub(name,"المشط","له أسنان ولا يعض ما هو ؟ ")
name = string.gsub(name,"الحفره","ما هو الشيئ اذا أخذنا منه ازداد وكبر ؟")
name = string.gsub(name,"البحر","ما هو الشيئ الذي يرفع اثقال ولا يقدر يرفع مسمار ؟")
name = string.gsub(name,"الثلج","انا ابن الماء فان تركوني في الماء مت فمن انا ؟")
name = string.gsub(name,"الاسفنج","كلي ثقوب ومع ذالك احفض الماء فمن اكون ؟")
name = string.gsub(name,"الصوت","اسير بلا رجلين ولا ادخل الا بالاذنين فمن انا ؟")
name = string.gsub(name,"بلم","حامل ومحمول نصف ناشف ونصف مبلول فمن اكون ؟ ")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يحل الحزوره ↓\n {"..name.."}","md",true)  
end
end
if text == "معاني" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
Redis:del(BLANK.."BLANK:Set:Maany"..msg.chat_id)
Maany_Rand = {"قرد","دجاجه","بطريق","ضفدع","بومه","نحله","ديك","جمل","بقره","دولفين","تمساح","قرش","نمر","اخطبوط","سمكه","خفاش","اسد","فأر","ذئب","فراشه","عقرب","زرافه","قنفذ","تفاحه","باذنجان"}
name = Maany_Rand[math.random(#Maany_Rand)]
Redis:set(BLANK.."BLANK:Game:Meaningof"..msg.chat_id,name)
name = string.gsub(name,"قرد","🐒")
name = string.gsub(name,"دجاجه","🐔")
name = string.gsub(name,"بطريق","🐧")
name = string.gsub(name,"ضفدع","🐸")
name = string.gsub(name,"بومه","🦉")
name = string.gsub(name,"نحله","🐝")
name = string.gsub(name,"ديك","🐓")
name = string.gsub(name,"جمل","🐫")
name = string.gsub(name,"بقره","🐄")
name = string.gsub(name,"دولفين","🐬")
name = string.gsub(name,"تمساح","🐊")
name = string.gsub(name,"قرش","🦈")
name = string.gsub(name,"نمر","🐅")
name = string.gsub(name,"اخطبوط","🐙")
name = string.gsub(name,"سمكه","🐟")
name = string.gsub(name,"خفاش","🦇")
name = string.gsub(name,"اسد","🦁")
name = string.gsub(name,"فأر","🐭")
name = string.gsub(name,"ذئب","🐺")
name = string.gsub(name,"فراشه","🦋")
name = string.gsub(name,"عقرب","🦂")
name = string.gsub(name,"زرافه","🦒")
name = string.gsub(name,"قنفذ","🦔")
name = string.gsub(name,"تفاحه","🍎")
name = string.gsub(name,"باذنجان","🍆")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يدز معنى السمايل ~ {"..name.."}","md",true)  
end
end
if text == "العكس" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
Redis:del(BLANK.."BLANK:Set:Aks"..msg.chat_id)
katu = {"باي","فهمت","موزين","اسمعك","احبك","موحلو","نضيف","حاره","ناصي","جوه","سريع","ونسه","طويل","سمين","ضعيف","شريف","شجاع","رحت","عدل","نشيط","شبعان","موعطشان","خوش ولد","اني","هادئ"}
name = katu[math.random(#katu)]
Redis:set(BLANK.."BLANK:Game:Reflection"..msg.chat_id,name)
name = string.gsub(name,"باي","هلو")
name = string.gsub(name,"فهمت","مافهمت")
name = string.gsub(name,"موزين","زين")
name = string.gsub(name,"اسمعك","ماسمعك")
name = string.gsub(name,"احبك","ماحبك")
name = string.gsub(name,"موحلو","حلو")
name = string.gsub(name,"نضيف","وصخ")
name = string.gsub(name,"حاره","بارده")
name = string.gsub(name,"ناصي","عالي")
name = string.gsub(name,"جوه","فوك")
name = string.gsub(name,"سريع","بطيء")
name = string.gsub(name,"ونسه","ضوجه")
name = string.gsub(name,"طويل","قزم")
name = string.gsub(name,"سمين","ضعيف")
name = string.gsub(name,"ضعيف","قوي")
name = string.gsub(name,"شريف","كواد")
name = string.gsub(name,"شجاع","جبان")
name = string.gsub(name,"رحت","اجيت")
name = string.gsub(name,"عدل","ميت")
name = string.gsub(name,"نشيط","كسول")
name = string.gsub(name,"شبعان","جوعان")
name = string.gsub(name,"موعطشان","عطشان")
name = string.gsub(name,"خوش ولد","موخوش ولد")
name = string.gsub(name,"اني","مطي")
name = string.gsub(name,"هادئ","عصبي")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يدز العكس ~ {"..name.."}","md",true)  
end
end
if text == "بات" or text == "محيبس" then   
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then 
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '𝟏 » { 👊 }', data = '/Mahibes1'}, {text = '𝟐 » { 👊 }', data = '/Mahibes2'}, 
},
{
{text = '𝟑 » { 👊 }', data = '/Mahibes3'}, {text = '𝟒 » { 👊 }', data = '/Mahibes4'}, 
},
{
{text = '𝟓 » { 👊 }', data = '/Mahibes5'}, {text = '𝟔 » { 👊 }', data = '/Mahibes6'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id, [[*
☆︙ لعبه المحيبس هي لعبة الحظ 
☆︙جرب حظك ويه البوت واتونس 
☆︙كل ما عليك هوا الضغط على احدى العضمات في الازرار
*]],"md",false, false, false, false, reply_markup)
end
end
if text == "خمن" or text == "تخمين" then   
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
Num = math.random(1,20)
Redis:set(BLANK.."BLANK:Game:Estimate"..msg.chat_id..msg.sender.user_id,Num)  
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙اهلا بك عزيزي في لعبة التخمين :\nٴ━━━━━━━━━━\n".."☆︙ملاحظه لديك { 3 } محاولات فقط فكر قبل ارسال تخمينك \n\n".."☆︙سيتم تخمين عدد ما بين ال {1 و 20} اذا تعتقد انك تستطيع الفوز جرب واللعب الان ؟ ","md",true)  
end
end
if text == "المختلف" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
mktlf = {"😸","☠","🐼","🐇","🌑","🌚","⭐️","✨","⛈","🌥","⛄️","👨‍🔬","👨‍💻","👨‍🔧","🧚‍♀","??‍♂","🧝‍♂","🙍‍♂","🧖‍♂","👬","🕒","🕤","⌛️","📅",};
name = mktlf[math.random(#mktlf)]
Redis:set(BLANK.."BLANK:Game:Difference"..msg.chat_id,name)
name = string.gsub(name,"😸","😹😹😹😹😹😹😹😹😸😹😹😹😹")
name = string.gsub(name,"☠","💀💀💀💀💀💀💀☠💀💀💀💀💀")
name = string.gsub(name,"🐼","👻👻👻🐼👻👻👻👻👻👻👻")
name = string.gsub(name,"🐇","🕊🕊🕊🕊🕊🐇🕊🕊🕊🕊")
name = string.gsub(name,"🌑","🌚🌚🌚🌚🌚🌑🌚🌚🌚")
name = string.gsub(name,"🌚","🌑🌑🌑🌑🌑🌚🌑🌑🌑")
name = string.gsub(name,"⭐️","🌟🌟🌟🌟🌟🌟🌟🌟⭐️🌟🌟🌟")
name = string.gsub(name,"✨","💫💫💫💫💫✨💫💫💫💫")
name = string.gsub(name,"⛈","🌨🌨🌨🌨🌨⛈🌨🌨🌨🌨")
name = string.gsub(name,"🌥","⛅️⛅️⛅️⛅️⛅️⛅️🌥⛅️⛅️⛅️⛅️")
name = string.gsub(name,"⛄️","☃☃☃☃☃☃⛄️☃☃☃☃")
name = string.gsub(name,"👨‍🔬","👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👩‍🔬👨‍🔬👩‍🔬👩‍🔬👩‍🔬")
name = string.gsub(name,"👨‍💻","👩‍💻👩‍??👩‍‍💻👩‍‍??👩‍‍💻👨‍💻??‍💻👩‍💻👩‍💻")
name = string.gsub(name,"👨‍🔧","👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👩‍🔧👨‍🔧👩‍🔧")
name = string.gsub(name,"👩‍🍳","👨‍🍳👨‍🍳👨‍🍳👨‍🍳👨‍🍳👩‍🍳👨‍🍳👨‍🍳??‍🍳")
name = string.gsub(name,"🧚‍♀","🧚‍♂🧚‍♂🧚‍♂🧚‍♂🧚‍♀🧚‍♂🧚‍♂")
name = string.gsub(name,"🧜‍♂","🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧜‍♀🧚‍♂🧜‍♀🧜‍♀🧜‍♀")
name = string.gsub(name,"🧝‍♂","🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♀🧝‍♂🧝‍♀🧝‍♀🧝‍♀")
name = string.gsub(name,"🙍‍♂️","🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙎‍♂️🙍‍♂️🙎‍♂️🙎‍♂️🙎‍♂️")
name = string.gsub(name,"🧖‍♂️","🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♂️🧖‍♀️🧖‍♀️🧖‍♀️🧖‍♀️")
name = string.gsub(name,"👬","👭👭👭👭👭👬👭👭👭")
name = string.gsub(name,"👨‍👨‍👧","👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👦👨‍👨‍👧👨‍👨‍👦👨‍👨‍👦")
name = string.gsub(name,"🕒","🕒🕒🕒🕒🕒🕒🕓🕒🕒🕒")
name = string.gsub(name,"🕤","🕥🕥🕥🕥🕥🕤🕥🕥🕥")
name = string.gsub(name,"⌛️","⏳⏳⏳⏳⏳⏳⌛️⏳⏳")
name = string.gsub(name,"📅","📆📆📆📆📆📆📅📆📆")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يدز الاختلاف ~ {"..name.."}","md",true)  
end
end
if text == "امثله" then
if Redis:get(BLANK.."BLANK:Status:Games"..msg.chat_id) then
mthal = {"جوز","ضراطه","الحبل","الحافي","شقره","بيدك","سلايه","النخله","الخيل","حداد","المبلل","يركص","قرد","العنب","العمه","الخبز","بالحصاد","شهر","شكه","يكحله",};
name = mthal[math.random(#mthal)]
Redis:set(BLANK.."BLANK:Game:Example"..msg.chat_id,name)
name = string.gsub(name,"جوز","ينطي____للماعده سنون")
name = string.gsub(name,"ضراطه","الي يسوق المطي يتحمل___")
name = string.gsub(name,"بيدك","اكل___محد يفيدك")
name = string.gsub(name,"الحافي","تجدي من___نعال")
name = string.gsub(name,"شقره","مع الخيل يا___")
name = string.gsub(name,"النخله","الطول طول___والعقل عقل الصخلة")
name = string.gsub(name,"سلايه","بالوجه امراية وبالظهر___")
name = string.gsub(name,"الخيل","من قلة___شدو على الچلاب سروج")
name = string.gsub(name,"حداد","موكل من صخم وجهه كال آني___")
name = string.gsub(name,"المبلل","___ما يخاف من المطر")
name = string.gsub(name,"الحبل","اللي تلدغة الحية يخاف من جرة___")
name = string.gsub(name,"يركص","المايعرف___يكول الكاع عوجه")
name = string.gsub(name,"العنب","المايلوح___يكول حامض")
name = string.gsub(name,"العمه","___إذا حبت الچنة ابليس يدخل الجنة")
name = string.gsub(name,"الخبز","انطي___للخباز حتى لو ياكل نصه")
name = string.gsub(name,"باحصاد","اسمة___ومنجله مكسور")
name = string.gsub(name,"شهر","امشي__ولا تعبر نهر")
name = string.gsub(name,"شكه","يامن تعب يامن__يا من على الحاضر لكة")
name = string.gsub(name,"القرد","__بعين امه غزال")
name = string.gsub(name,"يكحله","اجه___عماها")
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙اسرع واحد يكمل المثل ~ {"..name.."}","md",true)  
end
end
if text and text:match("^بيع مجوهراتي (%d+)$") then
local NumGame = text:match("^بيع مجوهراتي (%d+)$") 
if tonumber(NumGame) == tonumber(0) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n*☆︙لا استطيع البيع اقل من 1 *","md",true)  
end
local NumberGame = Redis:get(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id)
if tonumber(NumberGame) == tonumber(0) then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ليس لديك جواهر من الالعاب \n☆︙اذا كنت تريد ربح الجواهر \n☆︙ارسل الالعاب وابدأ اللعب ! ","md",true)  
end
if tonumber(NumGame) > tonumber(NumberGame) then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙ليس لديك جواهر بهاذا العدد \n☆︙لزيادة مجوهراتك في اللعبه \n☆︙ارسل الالعاب وابدأ اللعب !","md",true)   
end
local NumberGet = (NumGame * 50)
Redis:decrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id,NumGame)  
Redis:incrby(BLANK.."BLANK:Num:Message:User"..msg.chat_id..":"..msg.sender.user_id,NumGame)  
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم خصم *~ { "..NumGame.." }* من مجوهراتك \n☆︙وتم اضافة* ~ { "..(NumGame * 50).." } رساله الى رسالك *","md",true)  
end 
if text and text:match("^اضف مجوهرات (%d+)$") and msg.reply_to_message_id ~= 0 then
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..Message_Reply.sender.user_id, text:match("^اضف مجوهرات (%d+)$"))  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم اضافه له { "..text:match("^اضف مجوهرات (%d+)$").." } من المجوهرات").Reply,"md",true)  
end
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id ~= 0 then
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
if not msg.Addictive then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(7)..' }* ',"md",true)  
end
local Message_Reply = LuaTele.getMessage(msg.chat_id, msg.reply_to_message_id)
local UserInfo = LuaTele.getUser(Message_Reply.sender.user_id)
if UserInfo.message == "Invalid user ID" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ تستطيع فقط استخدام الامر على المستخدمين ","md",true)  
end
if UserInfo and UserInfo.type and UserInfo.type.luatele == "userTypeBot" then
return LuaTele.sendText(msg_chat_id,msg_id,"\n☆︙عذرآ لا تستطيع استخدام الامر على البوت ","md",true)  
end
Redis:incrby(BLANK.."BLANK:Num:Message:User"..msg.chat_id..":"..Message_Reply.sender.user_id, text:match("^اضف رسائل (%d+)$"))  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Message_Reply.sender.user_id,"☆︙تم اضافه له { "..text:match("^اضف رسائل (%d+)$").." } من الرسائل").Reply,"md",true)  
end
if text == "مجوهراتي" then 
local Num = Redis:get(BLANK.."BLANK:Num:Add:Games"..msg.chat_id..msg.sender.user_id) or 0
if Num == 0 then 
return LuaTele.sendText(msg_chat_id,msg_id, "☆︙لم تفز بأي مجوهره ","md",true)  
else
return LuaTele.sendText(msg_chat_id,msg_id, "☆︙عدد الجواهر التي ربحتها *← "..Num.." *","md",true)  
end
end

if text == 'ترتيب الاوامر' then
if not msg.Managers then
return LuaTele.sendText(msg_chat_id,msg_id,'\n*•هاذا الامر يخص { '..Controller_Num(6)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 'https://t.me/C_T_V_blank'}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n•عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'تعط','تعطيل الايدي بالصوره')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'تفع','تفعيل الايدي بالصوره')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'ا','ايدي')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'م','رفع مميز')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'اد', 'رفع ادمن')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'مد','رفع مدير')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'من', 'رفع منشئ')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'اس', 'رفع منشئ اساسي')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'مط','رفع مطور')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'تك','تنزيل الكل')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'ر','الرابط')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'رر','ردود المدير')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'،،','مسح المكتومين')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'رد','اضف رد')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'سح','مسح سحكاتي')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'غ','غنيلي')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'رس','رسائلي')
Redis:set(BLANK.."BLANK:Get:Reides:Commands:Group"..msg_chat_id..":"..'ثانوي','رفع مطور ثانوي')
return LuaTele.sendText(msg_chat_id,msg_id,[[*
☆︙تم ترتيب الاوامر بالشكل التالي ~
☆︙ ايدي - ا .
☆︙ رفع مميز - م .
☆︙رفع ادمن - اد .
☆︙ رفع مدير - مد . 
☆︙ رفع منشى - من . 
☆︙ رفع منشئ الاساسي - اس  .
☆︙ رفع مطور - مط .
☆︙رفع مطور ثانوي - ثانوي .
☆︙ تنزيل الكل - تك .
☆︙ تعطيل الايدي بالصوره - تعط .
☆︙ تفعيل الايدي بالصوره - تفع .
☆︙ الرابط - ر .
☆︙ ردود المدير - رر .
☆︙ مسح المكتومين - ،، .
☆︙ اضف رد - رد .
☆︙ مسح سحكاتي - سح .
☆︙ مسح رسائلي - رس .
☆︙ غنيلي - غ .
*]],"md")
end

end -- GroupBot
if chat_type(msg.chat_id) == "UserBot" then 
if text == 'تحديث الملفات •' or text == 'تحديث' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
print('Chat Id : '..msg_chat_id)
print('User Id : '..msg_user_send_id)
LuaTele.sendText(msg_chat_id,msg_id, "☆︙ تم تحديث الملفات ♻","md",true)
dofile('BLANK.lua')  
end
if text == '/start' then
Redis:sadd(BLANK..'BLANK:Num:User:Pv',msg.sender.user_id)  
if not msg.ControllerBot then
if not Redis:get(BLANK.."BLANK:Start:Bot") then
local CmdStart = '*\n☆︙أهلآ بك في بوت '..(Redis:get(BLANK.."BLANK:Name:Bot") or "كادي")..
'\n☆︙اختصاص البوت حماية المجموعات'..
'\n☆︙لتفعيل البوت عليك اتباع مايلي ...'..
'\n☆︙اضف البوت الى مجموعتك'..
'\n☆︙ارفعه ادمن {مشرف}'..
'\n☆︙ارسل كلمة { تفعيل } ليتم تفعيل المجموعه'..
'\n☆︙مطور البوت ← {'..UserSudo..'}*'
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '𖤐 السورس .', url = 'https://t.me/C_T_V_blank'},{text = '𖤐 لتنصيب بوت .', url = 't.me/XB8Bbot'}, 
},
{
{text = '𖤐 اضفني في مجموعتك .', url = 't.me/'..UserBot..'?startgroup=new'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,CmdStart,"md",false, false, false, false, reply_markup)
else
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '𖤐 السورس .', url = 'https://t.me/C_T_V_blank'},{text = '𖤐 لتنصيب بوت .', url = 't.me/XB8Bbot'}, 
},
{
{text = '𖤐 اضفني في مجموعتك .', url = 't.me/'..UserBot..'?startgroup=new'}, 
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,Redis:get(BLANK.."BLANK:Start:Bot"),"md",false, false, false, false, reply_markup)
end
else
local reply_markup = LuaTele.replyMarkup{type = 'keyboard',resize = true,is_personal = true,
data = {
{
{text = 'تفعيل التواصل •',type = 'text'},{text = 'تعطيل التواصل •', type = 'text'},
},
{
{text = 'تفعيل البوت الخدمي •',type = 'text'},{text = 'تعطيل البوت الخدمي •', type = 'text'},
},
{
{text = 'اذاعه للمجموعات •',type = 'text'},{text = 'اذاعه خاص •', type = 'text'},
},
{
{text = 'اذاعه بالتوجيه •',type = 'text'},{text = 'اذاعه بالتوجيه خاص •', type = 'text'},
},
{
{text = 'اذاعه بالتثبيت •',type = 'text'},
},
{
{text = 'المطورين الثانويين •',type = 'text'},{text = 'المطورين •',type = 'text'},{text = 'قائمه العام •', type = 'text'},
},
{
{text = 'مسح المطورين الثانويين •',type = 'text'},{text = 'مسح المطورين •',type = 'text'},{text = 'مسح قائمه العام •', type = 'text'},
},
{
{text = 'تغيير اسم البوت •',type = 'text'},{text = 'حذف اسم البوت •', type = 'text'},
},
{
{text = 'الاشتراك الاجباري •',type = 'text'},{text = 'تغيير الاشتراك الاجباري •',type = 'text'},
},
{
{text = 'تفعيل الاشتراك الاجباري •',type = 'text'},{text = 'تعطيل الاشتراك الاجباري •',type = 'text'},
},
{
{text = 'الاحصائيات •',type = 'text'},
},
{
{text = 'تغغير كليشه المطور •',type = 'text'},{text = 'حذف كليشه المطور •', type = 'text'},
},
{
{text = 'تغيير كليشه ستارت •',type = 'text'},{text = 'حذف كليشه ستارت •', type = 'text'},
},
{
{text = 'تنظيف المجموعات •',type = 'text'},{text = 'تنظيف المشتركين •', type = 'text'},
},
{
{text = 'جلب النسخه الاحتياطيه •',type = 'text'},
},
{
{text = 'اضف رد عام •',type = 'text'},{text = 'حذف رد عام •', type = 'text'},
},
{
{text = 'الردود العامه •',type = 'text'},{text = 'مسح الردود العامه •', type = 'text'},
},
{
{text = 'تحديث الملفات •',type = 'text'},{text = 'تحديث السورس •', type = 'text'},
},
{
{text = 'الغاء الامر •',type = 'text'},
},
}
}
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙ اهلا بك عزيزي المطور ', 'md', false, false, false, false, reply_markup)
end
end

if text == 'تنظيف المشتركين •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:Num:User:Pv")   
local x = 0
for k,v in pairs(list) do  
local Get_Chat = LuaTele.getChat(v)
local ChatAction = LuaTele.sendChatAction(v,'Typing')
if ChatAction.luatele ~= "ok" then
x = x + 1
Redis:srem(BLANK..'BLANK:Num:User:Pv',v)
end
end
if x ~= 0 then
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' }\n☆︙تم العثور على { '..x..' } من المشتركين حاظرين البوت*',"md")
else
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' }\n☆︙لم يتم العثور على وهميين*',"md")
end
end
if text == 'تنظيف المجموعات •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:ChekBotAdd")   
local x = 0
for k,v in pairs(list) do  
local Get_Chat = LuaTele.getChat(v)
if Get_Chat.id then
local statusMem = LuaTele.getChatMember(Get_Chat.id,BLANK)
if statusMem.status.luatele == "chatMemberStatusMember" then
x = x + 1
LuaTele.sendText(Get_Chat.id,0,'*☆︙البوت عظو في المجموعه سوف اغادر ويمكنك تفعيلي مره اخره *',"md")
Redis:srem(BLANK..'BLANK:ChekBotAdd',Get_Chat.id)
local keys = Redis:keys(BLANK..'*'..Get_Chat.id)
for i = 1, #keys do
Redis:del(keys[i])
end
LuaTele.leaveChat(Get_Chat.id)
end
else
x = x + 1
local keys = Redis:keys(BLANK..'*'..v)
for i = 1, #keys do
Redis:del(keys[i])
end
Redis:srem(BLANK..'BLANK:ChekBotAdd',v)
LuaTele.leaveChat(v)
end
end
if x ~= 0 then
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' } للمجموعات \n☆︙تم العثور على { '..x..' } مجموعات البوت ليس ادمن \n☆︙تم تعطيل المجموعه ومغادره البوت من الوهمي *',"md")
else
return LuaTele.sendText(msg_chat_id,msg_id,'*☆︙العدد الكلي { '..#list..' } للمجموعات \n☆︙لا توجد مجموعات وهميه*',"md")
end
end
if text == 'تغيير كليشه ستارت •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Change:Start:Bot"..msg.sender.user_id,300,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ ارسل لي كليشه Start الان ","md",true)  
end
if text == 'حذف كليشه ستارت •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Start:Bot") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف كليشه Start ","md",true)   
end
if text == 'تغيير اسم البوت •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Change:Name:Bot"..msg.sender.user_id,300,true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ ارسل لي الاسم الان ","md",true)  
end
if text == 'حذف اسم البوت •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:Name:Bot") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف اسم البوت ","md",true)   
end
if text and text:match("^تعين عدد الاعضاء (%d+)$") then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK..'BLANK:Num:Add:Bot',text:match("تعين عدد الاعضاء (%d+)$") ) 
LuaTele.sendText(msg_chat_id,msg_id,'*☆︙ تم تعيين عدد اعضاء تفعيل البوت اكثر من : '..text:match("تعين عدد الاعضاء (%d+)$")..' عضو *',"md",true)  
elseif text =='الاحصائيات •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
LuaTele.sendText(msg_chat_id,msg_id,'*☆︙عدد احصائيات البوت الكامله \n— — — — — — — — —\n☆︙عدد المجموعات : '..(Redis:scard(BLANK..'BLANK:ChekBotAdd') or 0)..'\n☆︙عدد المشتركين : '..(Redis:scard(BLANK..'BLANK:Num:User:Pv') or 0)..'*',"md",true)  
end
if text == 'تغغير كليشه المطور •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK..'BLANK:GetTexting:DevBLANK'..msg_chat_id..':'..msg.sender.user_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙ ارسل لي الكليشه الان')
end
if text == 'حذف كليشه المطور •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK..'BLANK:Texting:DevBLANK')
return LuaTele.sendText(msg_chat_id,msg_id,'☆︙ تم حذف كليشه المطور')
end
if text == 'اضف رد عام •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Set:Rd"..msg.sender.user_id..":"..msg_chat_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الكلمه لاضافتها في ردود المطور ","md",true)  
end
if text == 'حذف رد عام •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:Set:On"..msg.sender.user_id..":"..msg_chat_id,true)
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل الان الكلمه لحذفها من ردود المطور","md",true)  
end
if text=='اذاعه خاص •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Users" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسل لي سواء كان 
❨ ملف • ملصق • متحركه • صوره
 • فيديو • بصمه الفيديو • بصمه • صوت • رساله ❩
— — — — — — — — —
↯︙للخروج ارسل ( الغاء )
 ✓
]],"md",true)  
return false
end

if text=='اذاعه للمجموعات •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Groups" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسل لي سواء كان 
❨ ملف • ملصق • متحركه • صوره
 • فيديو • بصمه الفيديو • بصمه • صوت • رساله ❩
— — — — — — — — —
↯︙للخروج ارسل ( الغاء )
 ✓
]],"md",true)  
return false
end

if text=="اذاعه بالتثبيت •" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Groups:Pin" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,[[
↯︙ارسل لي سواء كان 
❨ ملف • ملصق • متحركه • صوره
 • فيديو • بصمه الفيديو • بصمه • صوت • رساله ❩
— — — — — — — — —
↯︙للخروج ارسل ( الغاء )
 ✓
]],"md",true)  
return false
end

if text=="اذاعه بالتوجيه •" then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Groups:Fwd" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي التوجيه الان\n☆︙ليتم نشره في المجموعات","md",true)  
return false
end

if text=='اذاعه بالتوجيه خاص •' then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:setex(BLANK.."BLANK:Broadcasting:Users:Fwd" .. msg_chat_id .. ":" .. msg.sender.user_id, 600, true) 
LuaTele.sendText(msg_chat_id,msg_id,"☆︙ارسل لي التوجيه الان\n☆︙ليتم نشره الى المشتركين","md",true)  
return false
end

if text == ("الردود العامه •") then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Rd:Sudo")
text = "\n📝︙قائمة ردود المطور \n— — — — — — — — —\n"
for k,v in pairs(list) do
if Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Gif"..v) then
db = "متحركه 🎭"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:vico"..v) then
db = "بصمه 📢"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:stekr"..v) then
db = "ملصق 🃏"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Text"..v) then
db = "رساله ✉"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Photo"..v) then
db = "صوره 🎇"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Video"..v) then
db = "فيديو 📹"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:File"..v) then
db = "ملف •"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:Audio"..v) then
db = "اغنيه 🎵"
elseif Redis:get(BLANK.."BLANK:Add:Rd:Sudo:video_note"..v) then
db = "بصمه فيديو 🎥"
end
text = text..""..k.." » {"..v.."} » {"..db.."}\n"
end
if #list == 0 then
text = "☆︙لا توجد ردود للمطور"
end
return LuaTele.sendText(msg_chat_id,msg_id,"["..text.."]","md",true)  
end
if text == ("مسح الردود العامه •") then 
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local list = Redis:smembers(BLANK.."BLANK:List:Rd:Sudo")
for k,v in pairs(list) do
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Gif"..v)   
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:vico"..v)   
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:stekr"..v)     
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Text"..v)   
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Photo"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Video"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:File"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:Audio"..v)
Redis:del(BLANK.."BLANK:Add:Rd:Sudo:video_note"..v)
Redis:del(BLANK.."BLANK:List:Rd:Sudo")
end
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم حذف ردود المطور","md",true)  
end
if text == 'مسح المطورين •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Developers:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:Developers:Groups") 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المطورين *","md",true)
end
if text == 'مسح المطورين الثانويين •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:DevelopersQ:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:DevelopersQ:Groups") 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المطورين *","md",true)
end
if text == 'مسح قائمه العام •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:BanAll:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد محظورين عام حاليا , ","md",true)  
end
Redis:del(BLANK.."BLANK:BanAll:Groups") 
return LuaTele.sendText(msg_chat_id,msg_id,"*☆︙تم مسح {"..#Info_Members.."} من المحظورين عام *","md",true)
end
if text == 'تعطيل البوت الخدمي •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:BotFree") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل البوت الخدمي ","md",true)
end
if text == 'تعطيل التواصل •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:del(BLANK.."BLANK:TwaslBot") 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تعطيل التواصل داخل البوت ","md",true)
end
if text == 'تفعيل البوت الخدمي •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:BotFree",true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل البوت الخدمي ","md",true)
end
if text == 'تفعيل التواصل •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
Redis:set(BLANK.."BLANK:TwaslBot",true) 
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙تم تفعيل التواصل داخل البوت ","md",true)
end
if text == 'قائمه العام •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end 
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:BanAll:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد محظورين عام حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه المحظورين عام  \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
var(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المحظورين عام', data = msg.sender.user_id..'/BanAll'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المطورين •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:Developers:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه مطورين البوت \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المطورين', data = msg.sender.user_id..'/Developers'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if text == 'المطورين الثانويين •' then
if not msg.ControllerBot then 
return LuaTele.sendText(msg_chat_id,msg_id,'\n*☆︙هاذا الامر يخص { '..Controller_Num(1)..' }* ',"md",true)  
end
if ChannelJoin(msg) == false then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = 'اضغط للاشتراك', url = 't.me/'..Redis:get(BLANK..'BLANK:Channel:Join')}, },}}
return LuaTele.sendText(msg.chat_id,msg.id,'*\n☆︙عليك الاشتراك في قناة البوت لاستخذام الاوامر*',"md",false, false, false, false, reply_markup)
end
local Info_Members = Redis:smembers(BLANK.."BLANK:DevelopersQ:Groups") 
if #Info_Members == 0 then
return LuaTele.sendText(msg_chat_id,msg_id,"☆︙لا يوجد مطورين حاليا , ","md",true)  
end
ListMembers = '\n*☆︙قائمه مطورين البوت \n — — — — — — — — —*\n'
for k, v in pairs(Info_Members) do
local UserInfo = LuaTele.getUser(v)
if UserInfo and UserInfo.username and UserInfo.username ~= "" then
ListMembers = ListMembers.."*"..k.." - *[@"..UserInfo.username.."](tg://user?id="..v..")\n"
else
ListMembers = ListMembers.."*"..k.." -* ["..v.."](tg://user?id="..v..")\n"
end
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {{{text = '- مسح المطورين', data = msg.sender.user_id..'/Developers'},},}}
return LuaTele.sendText(msg_chat_id, msg_id, ListMembers, 'md', false, false, false, false, reply_markup)
end
if not msg.ControllerBot then
if Redis:get(BLANK.."BLANK:TwaslBot") and not Redis:sismember(BLANK.."BLANK:BaN:In:Tuasl",msg.sender.user_id) then
local ListGet = {Sudo_Id,msg.sender.user_id}
local IdSudo = LuaTele.getChat(ListGet[1]).id
local IdUser = LuaTele.getChat(ListGet[2]).id
local FedMsg = LuaTele.sendForwarded(IdSudo, 0, IdUser, msg_id)
Redis:setex(BLANK.."BLANK:Twasl:UserId"..msg.date,172800,IdUser)
if FedMsg.content.luatele == "messageSticker" then
LuaTele.sendText(IdSudo,0,Reply_Status(IdUser,'☆︙قام بارسال الملصق').Reply,"md",true)  
end
return LuaTele.sendText(IdUser,msg_id,Reply_Status(IdUser,'☆︙تم ارسال رسالتك الى المطور').Reply,"md",true)  
end
else 
if msg.reply_to_message_id ~= 0 then
local Message_Get = LuaTele.getMessage(msg_chat_id, msg.reply_to_message_id)
if Message_Get.forward_info then
local Info_User = Redis:get(BLANK.."BLANK:Twasl:UserId"..Message_Get.forward_info.date) or 46899864
if text == 'حظر' then
Redis:sadd(BLANK..'BLANK:BaN:In:Tuasl',Info_User)  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Info_User,'☆︙تم حظره من تواصل البوت ').Reply,"md",true)  
end 
if text =='الغاء الحظر' or text =='الغاء حظر' then
Redis:srem(BLANK..'BLANK:BaN:In:Tuasl',Info_User)  
return LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Info_User,'☆︙تم الغاء حظره من تواصل البوت ').Reply,"md",true)  
end 
local ChatAction = LuaTele.sendChatAction(Info_User,'Typing')
if not Info_User or ChatAction.message == "USER_IS_BLOCKED" then
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Info_User,'☆︙قام بحظر البوت لا استطيع ارسال رسالتك ').Reply,"md",true)  
end
if msg.content.video_note then
LuaTele.sendVideoNote(Info_User, 0, msg.content.video_note.video.remote.id)
elseif msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
end
LuaTele.sendPhoto(Info_User, 0, idPhoto,'')
elseif msg.content.sticker then 
LuaTele.sendSticker(Info_User, 0, msg.content.sticker.sticker.remote.id)
elseif msg.content.voice_note then 
LuaTele.sendVoiceNote(Info_User, 0, msg.content.voice_note.voice.remote.id, '', 'md')
elseif msg.content.video then 
LuaTele.sendVideo(Info_User, 0, msg.content.video.video.remote.id, '', "md")
elseif msg.content.animation then 
LuaTele.sendAnimation(Info_User,0, msg.content.animation.animation.remote.id, '', 'md')
elseif msg.content.document then
LuaTele.sendDocument(Info_User, 0, msg.content.document.document.remote.id, '', 'md')
elseif msg.content.audio then
LuaTele.sendAudio(Info_User, 0, msg.content.audio.audio.remote.id, '', "md") 
elseif text then
LuaTele.sendText(Info_User,0,text,"md",true)
end 
LuaTele.sendText(msg_chat_id,msg_id,Reply_Status(Info_User,'☆︙تم ارسال رسالتك اليه ').Reply,"md",true)  
end
end
end 
end --UserBot
end -- File_Bot_Run


function CallBackLua(data) --- هذا الكالباك بي الابديت
--var(data) 
if data and data.luatele and data.luatele == "updateSupergroup" then
local Get_Chat = LuaTele.getChat('-100'..data.supergroup.id)
if data.supergroup.status.luatele == "chatMemberStatusBanned" then
Redis:srem(BLANK.."BLANK:ChekBotAdd",'-100'..data.supergroup.id)
local keys = Redis:keys(BLANK..'*'..'-100'..data.supergroup.id)
for i = 1, #keys do
Redis:del(keys[i])
end
return LuaTele.sendText(Sudo_Id,0,'*\n☆︙تم طرد البوت من مجموعه جديده \n☆︙اسم المجموعه : '..Get_Chat.title..'\n☆︙ايدي المجموعه :*`-100'..data.supergroup.id..'`\n☆︙تم مسح جميع البيانات المتعلقه بالمجموعه',"md")
end
elseif data and data.luatele and data.luatele == "updateMessageSendSucceeded" then
local msg = data.message
local Chat = msg.chat_id
if msg.content.text then
text = msg.content.text.text
end
if msg.content.video_note then
if msg.content.video_note.video.remote.id == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.photo then
if msg.content.photo.sizes[1].photo.remote.id then
idPhoto = msg.content.photo.sizes[1].photo.remote.id
elseif msg.content.photo.sizes[2].photo.remote.id then
idPhoto = msg.content.photo.sizes[2].photo.remote.id
elseif msg.content.photo.sizes[3].photo.remote.id then
idPhoto = msg.content.photo.sizes[3].photo.remote.id
end
if idPhoto == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.sticker then 
if msg.content.sticker.sticker.remote.id == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.voice_note then 
if msg.content.voice_note.voice.remote.id == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.video then 
if msg.content.video.video.remote.id == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.animation then 
if msg.content.animation.animation.remote.id ==  Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.document then
if msg.content.document.document.remote.id == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif msg.content.audio then
if msg.content.audio.audio.remote.id == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
elseif text then
if text == Redis:get(BLANK.."BLANK:PinMsegees:"..msg.chat_id) then
LuaTele.pinChatMessage(msg.chat_id,msg.id,true)
Redis:del(BLANK.."BLANK:PinMsegees:"..msg.chat_id)
end
end

elseif data and data.luatele and data.luatele == "updateNewMessage" then
if data.message.content.luatele == "messageChatDeleteMember" or data.message.content.luatele == "messageChatAddMembers" or data.message.content.luatele == "messagePinMessage" or data.message.content.luatele == "messageChatChangeTitle" or data.message.content.luatele == "messageChatJoinByLink" then
if Redis:get(BLANK.."BLANK:Lock:tagservr"..data.message.chat_id) then
LuaTele.deleteMessages(data.message.chat_id,{[1]= data.message.id})
end
end 
File_Bot_Run(data.message,data.message)

elseif data and data.luatele and data.luatele == "updateMessageEdited" then
-- data.chat_id -- data.message_id
local Message_Edit = LuaTele.getMessage(data.chat_id, data.message_id)
if Message_Edit.sender.user_id == BLANK then
print('This is Edit for Bot')
return false
end
File_Bot_Run(Message_Edit,Message_Edit)
Redis:incr(BLANK..'BLANK:Num:Message:Edit'..data.chat_id..Message_Edit.sender.user_id)
if Message_Edit.content.luatele == "messageContact" or Message_Edit.content.luatele == "messageVideoNote" or Message_Edit.content.luatele == "messageDocument" or Message_Edit.content.luatele == "messageAudio" or Message_Edit.content.luatele == "messageVideo" or Message_Edit.content.luatele == "messageVoiceNote" or Message_Edit.content.luatele == "messageAnimation" or Message_Edit.content.luatele == "messagePhoto" then
if Redis:get(BLANK.."BLANK:Lock:edit"..data.chat_id) then
LuaTele.deleteMessages(data.chat_id,{[1]= data.message_id})
end
end
elseif data and data.luatele and data.luatele == "updateNewCallbackQuery" then
-- data.chat_id
-- data.payload.data
-- data.sender_user_id
Text = LuaTele.base64_decode(data.payload.data)
IdUser = data.sender_user_id
ChatId = data.chat_id
Msg_id = data.message_id

if Text and Text:match('idu@(%d+)msg@(%d+)@id@(.*)') then
local listYt = {Text:match('idu@(%d+)msg@(%d+)@id@(.*)')}
if tonumber(listYt[1]) == tonumber(IdUser) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = ' { Ogg - بصمه }', data = 'oggidu@'..IdUser..'idv@'..listYt[3]}, 
},
{
{text = ' { Mp3 - ملف صوتي }', data = 'mp3idu@'..IdUser..'idv@'..listYt[3]},  {text = ' { Mp4 - فيديو }', data = 'mp4idu@'..IdUser..'idv@'..listYt[3]}, 
},
{
{text = '{ الغاء الامر }', data = 'idu@'..IdUser..'delamr'},
},
}
}
return LuaTele.editMessageText(ChatId,Msg_id,'*☆︙عليك اختيار احدى الصيغ للتنزبل *', 'md', true, false, reply_markup)
end
end
if Text and Text:match('oggidu@(%d+)idv@(.*)') then
local listYt = {Text:match('oggidu@(%d+)idv@(.*)')}
if tonumber(listYt[1]) == tonumber(IdUser) then
LuaTele.deleteMessages(ChatId,{[1]= Msg_id})
io.popen('curl -s "https://devstorm.ml/youtube/yt3.php?url='..listYt[2]..'&token='..Token..'&chat='..ChatId..'&type=ogg&msg=0"')
end
end
if Text and Text:match('mp3idu@(%d+)idv@(.*)') then
local listYt = {Text:match('mp3idu@(%d+)idv@(.*)')}
if tonumber(listYt[1]) == tonumber(IdUser) then
LuaTele.deleteMessages(ChatId,{[1]= Msg_id})
io.popen('curl -s "https://devstorm.ml/YoutubeApi/yt2.php?url='..listYt[2]..'&token='..Token..'&chat='..ChatId..'&type=mp3&msg=0"')
end
end
if Text and Text:match('mp4idu@(%d+)idv@(.*)') then
local listYt = {Text:match('mp4idu@(%d+)idv@(.*)')}
if tonumber(listYt[1]) == tonumber(IdUser) then
LuaTele.deleteMessages(ChatId,{[1]= Msg_id})
io.popen('curl -s "https://devstorm.ml/youtube/yt3.php?url='..listYt[2]..'&token='..Token..'&chat='..ChatId..'&type=mp4&msg=0"')
end
end
if Text and Text:match('idu@(%d+)delamr') then
local listYt = Text:match('idu@(%d+)delamr') 
if tonumber(listYt) == tonumber(IdUser) then
LuaTele.deleteMessages(ChatId,{[1]= Msg_id})
end
end


if Text and Text:match('/Mahibes(%d+)') then
local GetMahibes = Text:match('/Mahibes(%d+)') 
local NumMahibes = math.random(1,6)
if tonumber(GetMahibes) == tonumber(NumMahibes) then
Redis:incrby(BLANK.."BLANK:Num:Add:Games"..ChatId..IdUser, 1)  
MahibesText = '*☆︙الف مبروك حظك حلو اليوم\n☆︙فزت ويانه وطلعت المحيبس بل عظمه رقم {'..NumMahibes..'}*'
else
MahibesText = '*☆︙للاسف لقد خسرت المحيبس بالعظمه رقم {'..NumMahibes..'}\n☆︙جرب حضك ويانه مره اخره*'
end
if NumMahibes == 1 then
Mahibes1 = '🤚' else Mahibes1 = '👊'
end
if NumMahibes == 2 then
Mahibes2 = '🤚' else Mahibes2 = '👊'
end
if NumMahibes == 3 then
Mahibes3 = '🤚' else Mahibes3 = '👊' 
end
if NumMahibes == 4 then
Mahibes4 = '🤚' else Mahibes4 = '👊'
end
if NumMahibes == 5 then
Mahibes5 = '🤚' else Mahibes5 = '👊'
end
if NumMahibes == 6 then
Mahibes6 = '🤚' else Mahibes6 = '👊'
end
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '𝟏 » { '..Mahibes1..' }', data = '/*'}, {text = '𝟐 » { '..Mahibes2..' }', data = '/*'}, 
},
{
{text = '𝟑 » { '..Mahibes3..' }', data = '/*'}, {text = '𝟒 » { '..Mahibes4..' }', data = '/*'}, 
},
{
{text = '𝟓 » { '..Mahibes5..' }', data = '/*'}, {text = '𝟔 » { '..Mahibes6..' }', data = '/*'}, 
},
{
{text = '{ اللعب مره اخرى }', data = '/MahibesAgane'},
},
}
}
return LuaTele.editMessageText(ChatId,Msg_id,MahibesText, 'md', true, false, reply_markup)
end
if Text == "/MahibesAgane" then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = '𝟏 » { 👊 }', data = '/Mahibes1'}, {text = '𝟐 » { 👊 }', data = '/Mahibes2'}, 
},
{
{text = '𝟑 » { 👊 }', data = '/Mahibes3'}, {text = '𝟒 » { 👊 }', data = '/Mahibes4'}, 
},
{
{text = '𝟓 » { 👊 }', data = '/Mahibes5'}, {text = '𝟔 » { 👊 }', data = '/Mahibes6'}, 
},
}
}
local TextMahibesAgane = [[*
☆︙ لعبه المحيبس هي لعبة الحظ 
☆︙جرب حظك ويه البوت واتونس 
☆︙كل ما عليك هوا الضغط على احدى العضمات في الازرار
*]]
return LuaTele.editMessageText(ChatId,Msg_id,TextMahibesAgane, 'md', true, false, reply_markup)
end
if Text and Text:match('(%d+)/help1') then
local UserId = Text:match('(%d+)/help1')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙اوامر الحمايه اتبع مايلي ...
— — — — — — — — —
☆︙قفل ، فتح ← الامر 
☆︙تستطيع قفل حمايه كما يلي ...
☆︙← { بالتقيد ، بالطرد ، بالكتم }
— — — — — — — — —
☆︙الروابط
☆︙المعرف
☆︙التاك
☆︙الشارحه
☆︙التعديل
☆︙التثبيت
☆︙المتحركه
☆︙الملفات
☆︙الصور
— — — — — — — — —
☆︙الماركداون
☆︙البوتات
☆︙التكرار
☆︙الكلايش
☆︙السيلفي
☆︙الملصقات
☆︙الفيديو
☆︙الانلاين
☆︙الدردشه
— — — — — — — — —
☆︙التوجيه
☆︙الاغاني
☆︙الصوت
☆︙الجهات
☆︙الاشعارات
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help2') then
local UserId = Text:match('(%d+)/help2')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙اوامر ادمنية المجموعه ...
— — — — — — — — —
☆︙رفع، تنزيل ← مميز
☆︙تاك للكل ، عدد الكروب
☆︙كتم ، حظر ، طرد ، تقيد
☆︙الغاء كتم ، الغاء حظر ، الغاء تقيد
☆︙منع ، الغاء منع 
— — — — — — — — —
☆︙عرض القوائم كما يلي ...
— — — — — — — — —
☆︙المكتومين
☆︙المميزين 
☆︙قائمه المنع
— — — — — — — — —
☆︙تثبيت ، الغاء تثبيت
☆︙الرابط ، الاعدادات
☆︙الترحيب ، القوانين
☆︙تفعيل ، تعطيل ← الترحيب
☆︙تفعيل ، تعطيل ← الرابط
☆︙جهاتي ،ايدي ، رسائلي
☆︙سحكاتي ، مجوهراتي
☆︙كشف البوتات
— — — — — — — — —
☆︙وضع ، ضع ← الاوامر التاليه 
☆︙اسم ، رابط ، صوره
☆︙قوانين ، وصف ، ترحيب
— — — — — — — — —
☆︙حذف ، مسح ← الاوامر التاليه
☆︙قائمه المنع ، المحظورين 
☆︙المميزين ، المكتومين ، القوانين
☆︙المطرودين ، البوتات ، الصوره
☆︙الرابط
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help3') then
local UserId = Text:match('(%d+)/help3')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙اوامر المدراء في المجموعه
— — — — — — — — —
☆︙رفع ، تنزيل ← ادمن
☆︙الادمنيه 
•️︙رفع، كشف ← القيود
☆︙تنزيل الكل ← { بالرد ، بالمعرف }
— — — — — — — — —
☆︙لتغيير رد الرتب في البوت
— — — — — — — — —
☆︙تغير رد ← {اسم الرتبه والنص} 
☆︙المطور ، المنشئ الاساسي
☆︙المنشئ ، المدير ، الادمن
☆︙المميز ، العضو
— — — — — — — — —
☆︙تفعيل ، تعطيل ← الاوامر التاليه ↓
— — — — — — — — —
☆︙الايدي ، الايدي بالصوره
☆︙ردود المطور ، ردود المدير
☆︙اطردني ، الالعاب ، الرفع
☆︙الحظر ، الرابط ،
— — — — — — — — —
☆︙تعين ، مسح ←{ الايدي }
☆︙رفع الادمنيه ، مسح الادمنيه
☆︙ردود المدير ، مسح ردود المدير
☆︙اضف ، حذف ← { رد }
☆︙تنظيف ← { عدد }
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help4') then
local UserId = Text:match('(%d+)/help4')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙اوامر المنشئ الاساسي
— — — — — — — — —
☆︙رفع ، تنزيل ←{ منشئ }
☆︙المنشئين ، مسح المنشئين
— — — — — — — — —
☆︙اوامر المنشئ المجموعه
— — — — — — — — —
☆︙رفع ، تنزيل ← { مدير }
☆︙المدراء ، مسح المدراء
☆︙اضف رسائل ← { بالرد او الايدي }
☆︙اضف مجوهرات ← { بالرد او الايدي }
☆︙اضف ، حذف ← { امر }
☆︙الاوامر المضافه ، مسح الاوامر المضافه
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help5') then
local UserId = Text:match('(%d+)/help5')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙اوامر المطور الاساسي  
— — — — — — — — —
☆︙حظر عام ، الغاء العام
☆︙اضف ، حذف ← { مطور } 
☆︙قائمه العام ، مسح قائمه العام
☆︙المطورين ، مسح المطورين
— — — — — — — — —
☆︙اضف ، حذف ← { رد للكل }
☆︙وضع ، حذف ← { كليشه المطور } 
☆︙مسح ردود المطور ، ردود المطور 
☆︙تحديث ،  تحديث السورس 
☆︙تعين عدد الاعضاء ← { العدد }
— — — — — — — — —
☆︙تفعيل ، تعطيل ← { الاوامر التاليه ↓}
☆︙البوت الخدمي ، المغادرة ، الاذاعه
☆︙ملف ← { اسم الملف }
— — — — — — — — —
☆︙مسح جميع الملفات 
☆︙المتجر ، الملفات
— — — — — — — — —
☆︙اوامر المطور في البوت
— — — — — — — — —
☆︙تفعيل ، تعطيل ، الاحصائيات
☆︙رفع، تنزيل ← { منشئ اساسي }
☆︙مسح الاساسين ، المنشئين الاساسين 
☆︙غادر ، غادر ← { والايدي }
☆︙اذاعه ، اذاعه بالتوجيه ، اذاعه بالتثبيت
☆︙اذاعه خاص ، اذاعه خاص بالتوجيه 
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/help6') then
local UserId = Text:match('(%d+)/help6')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙قائمه الالعاب البوت
— — — — — — — — —
☆︙لعبة المختلف » المختلف
☆︙لعبة الامثله » امثله
☆︙لعبة العكس » العكس
☆︙لعبة الحزوره » حزوره
☆︙لعبة المعاني » معاني
☆︙لعبة البات » بات
☆︙لعبة التخمين » خمن
☆︙لعبه الاسرع » الاسرع
☆︙لعبة السمايلات » سمايلات
— — — — — — — — —
☆︙مجوهراتي ← لعرض عدد الارباح
☆︙بيع مجوهراتي ← { العدد } ← لبيع كل مجوهره مقابل {50} رساله
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/helpall') then
local UserId = Text:match('(%d+)/helpall')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'اوامر الحمايه', data = IdUser..'/help1'}, {text = 'اوامر الادمنيه', data = IdUser..'/help2'}, 
},
{
{text = 'اوامر المدراء', data = IdUser..'/help3'}, {text = 'اوامر المنشئين', data = IdUser..'/help4'}, 
},
{
{text = 'اوامر مطورين', data = IdUser..'/help5'}, {text = 'الالعاب', data = IdUser..'/help6'}, 
},
{
{text = 'القائمه الرئيسيه ', data = IdUser..'/helpall'},
},
{
{text = '- 𝙎𝙊𝙐𝙍𝘾𝙀 𝘽𝙇𝘼𝙉𝙆 .', url = 'https://t.me/C_T_V_blank'}, 
},
}
}
local TextHelp = [[*
☆︙توجد ← 5 اوامر في البوت
— — — — — — — — —
☆︙ارسل { م1 } ← اوامر الحمايه
☆︙ارسل { م2 } ← اوامر الادمنيه
☆︙ارسل { م3 } ← اوامر المدراء
☆︙ارسل { م4 } ← اوامر المنشئين
☆︙ارسل { م5 } ← اوامر مطورين البوت
*]]
LuaTele.editMessageText(ChatId,Msg_id,TextHelp, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_link') then
local UserId = Text:match('(%d+)/lock_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Link"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الروابط").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spam') then
local UserId = Text:match('(%d+)/lock_spam')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Spam"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكلايش").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypord') then
local UserId = Text:match('(%d+)/lock_keypord')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Keyboard"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكيبورد").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voice') then
local UserId = Text:match('(%d+)/lock_voice')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:vico"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الاغاني").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gif') then
local UserId = Text:match('(%d+)/lock_gif')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Animation"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المتحركات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_files') then
local UserId = Text:match('(%d+)/lock_files')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Document"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملفات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_text') then
local UserId = Text:match('(%d+)/lock_text')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:text"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الدردشه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_video') then
local UserId = Text:match('(%d+)/lock_video')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Video"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الفيديو").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photo') then
local UserId = Text:match('(%d+)/lock_photo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Photo"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصور").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_username') then
local UserId = Text:match('(%d+)/lock_username')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:User:Name"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المعرفات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tags') then
local UserId = Text:match('(%d+)/lock_tags')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:hashtak"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التاك").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_bots') then
local UserId = Text:match('(%d+)/lock_bots')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Bot:kick"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل البوتات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwd') then
local UserId = Text:match('(%d+)/lock_fwd')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:forward"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التوجيه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audio') then
local UserId = Text:match('(%d+)/lock_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Audio"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصوت").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikear') then
local UserId = Text:match('(%d+)/lock_stikear')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Sticker"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملصقات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phone') then
local UserId = Text:match('(%d+)/lock_phone')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Contact"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الجهات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_joine') then
local UserId = Text:match('(%d+)/lock_joine')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Join"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الدخول").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_addmem') then
local UserId = Text:match('(%d+)/lock_addmem')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:AddMempar"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الاضافه").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonote') then
local UserId = Text:match('(%d+)/lock_videonote')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Unsupported"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل بصمه الفيديو").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_pin') then
local UserId = Text:match('(%d+)/lock_pin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:lockpin"..ChatId,(LuaTele.getChatPinnedMessage(ChatId).id or true)) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التثبيت").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tgservir') then
local UserId = Text:match('(%d+)/lock_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:tagservr"..ChatId,true)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الاشعارات").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaun') then
local UserId = Text:match('(%d+)/lock_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Markdaun"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الماركدون").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_edits') then
local UserId = Text:match('(%d+)/lock_edits')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:edit"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التعديل").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_games') then
local UserId = Text:match('(%d+)/lock_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:geam"..ChatId,"del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الالعاب").Lock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_flood') then
local UserId = Text:match('(%d+)/lock_flood')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(BLANK.."BLANK:Spam:Group:User"..ChatId ,"Spam:User","del")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التكرار").Lock, 'md', true, false, reply_markup)
end
end

if Text and Text:match('(%d+)/lock_linkkid') then
local UserId = Text:match('(%d+)/lock_linkkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Link"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الروابط").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamkid') then
local UserId = Text:match('(%d+)/lock_spamkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Spam"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكلايش").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordkid') then
local UserId = Text:match('(%d+)/lock_keypordkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Keyboard"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكيبورد").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicekid') then
local UserId = Text:match('(%d+)/lock_voicekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:vico"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الاغاني").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifkid') then
local UserId = Text:match('(%d+)/lock_gifkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Animation"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المتحركات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fileskid') then
local UserId = Text:match('(%d+)/lock_fileskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Document"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملفات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videokid') then
local UserId = Text:match('(%d+)/lock_videokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Video"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الفيديو").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photokid') then
local UserId = Text:match('(%d+)/lock_photokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Photo"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصور").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamekid') then
local UserId = Text:match('(%d+)/lock_usernamekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:User:Name"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المعرفات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagskid') then
local UserId = Text:match('(%d+)/lock_tagskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:hashtak"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التاك").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdkid') then
local UserId = Text:match('(%d+)/lock_fwdkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:forward"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التوجيه").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audiokid') then
local UserId = Text:match('(%d+)/lock_audiokid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Audio"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصوت").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearkid') then
local UserId = Text:match('(%d+)/lock_stikearkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Sticker"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملصقات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonekid') then
local UserId = Text:match('(%d+)/lock_phonekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Contact"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الجهات").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotekid') then
local UserId = Text:match('(%d+)/lock_videonotekid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Unsupported"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل بصمه الفيديو").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunkid') then
local UserId = Text:match('(%d+)/lock_markdaunkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Markdaun"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الماركدون").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gameskid') then
local UserId = Text:match('(%d+)/lock_gameskid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:geam"..ChatId,"ked")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الالعاب").lockKid, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodkid') then
local UserId = Text:match('(%d+)/lock_floodkid')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(BLANK.."BLANK:Spam:Group:User"..ChatId ,"Spam:User","keed")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التكرار").lockKid, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkktm') then
local UserId = Text:match('(%d+)/lock_linkktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Link"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الروابط").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamktm') then
local UserId = Text:match('(%d+)/lock_spamktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Spam"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكلايش").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordktm') then
local UserId = Text:match('(%d+)/lock_keypordktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Keyboard"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكيبورد").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicektm') then
local UserId = Text:match('(%d+)/lock_voicektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:vico"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الاغاني").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifktm') then
local UserId = Text:match('(%d+)/lock_gifktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Animation"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المتحركات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_filesktm') then
local UserId = Text:match('(%d+)/lock_filesktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Document"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملفات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videoktm') then
local UserId = Text:match('(%d+)/lock_videoktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Video"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الفيديو").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photoktm') then
local UserId = Text:match('(%d+)/lock_photoktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Photo"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصور").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamektm') then
local UserId = Text:match('(%d+)/lock_usernamektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:User:Name"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المعرفات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagsktm') then
local UserId = Text:match('(%d+)/lock_tagsktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:hashtak"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التاك").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdktm') then
local UserId = Text:match('(%d+)/lock_fwdktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:forward"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التوجيه").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audioktm') then
local UserId = Text:match('(%d+)/lock_audioktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Audio"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصوت").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearktm') then
local UserId = Text:match('(%d+)/lock_stikearktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Sticker"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملصقات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonektm') then
local UserId = Text:match('(%d+)/lock_phonektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Contact"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الجهات").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotektm') then
local UserId = Text:match('(%d+)/lock_videonotektm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Unsupported"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل بصمه الفيديو").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunktm') then
local UserId = Text:match('(%d+)/lock_markdaunktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Markdaun"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الماركدون").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gamesktm') then
local UserId = Text:match('(%d+)/lock_gamesktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:geam"..ChatId,"ktm")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الالعاب").lockKtm, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodktm') then
local UserId = Text:match('(%d+)/lock_floodktm')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(BLANK.."BLANK:Spam:Group:User"..ChatId ,"Spam:User","mute")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التكرار").lockKtm, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/lock_linkkick') then
local UserId = Text:match('(%d+)/lock_linkkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Link"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الروابط").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_spamkick') then
local UserId = Text:match('(%d+)/lock_spamkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Spam"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكلايش").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_keypordkick') then
local UserId = Text:match('(%d+)/lock_keypordkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Keyboard"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الكيبورد").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_voicekick') then
local UserId = Text:match('(%d+)/lock_voicekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:vico"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الاغاني").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gifkick') then
local UserId = Text:match('(%d+)/lock_gifkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Animation"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المتحركات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fileskick') then
local UserId = Text:match('(%d+)/lock_fileskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Document"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملفات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videokick') then
local UserId = Text:match('(%d+)/lock_videokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Video"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الفيديو").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_photokick') then
local UserId = Text:match('(%d+)/lock_photokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Photo"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصور").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_usernamekick') then
local UserId = Text:match('(%d+)/lock_usernamekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:User:Name"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل المعرفات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_tagskick') then
local UserId = Text:match('(%d+)/lock_tagskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:hashtak"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التاك").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_fwdkick') then
local UserId = Text:match('(%d+)/lock_fwdkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:forward"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التوجيه").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_audiokick') then
local UserId = Text:match('(%d+)/lock_audiokick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Audio"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الصوت").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_stikearkick') then
local UserId = Text:match('(%d+)/lock_stikearkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Sticker"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الملصقات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_phonekick') then
local UserId = Text:match('(%d+)/lock_phonekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Contact"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الجهات").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_videonotekick') then
local UserId = Text:match('(%d+)/lock_videonotekick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Unsupported"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل بصمه الفيديو").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_markdaunkick') then
local UserId = Text:match('(%d+)/lock_markdaunkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:Markdaun"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الماركدون").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_gameskick') then
local UserId = Text:match('(%d+)/lock_gameskick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Lock:geam"..ChatId,"kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل الالعاب").lockKick, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/lock_floodkick') then
local UserId = Text:match('(%d+)/lock_floodkick')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hset(BLANK.."BLANK:Spam:Group:User"..ChatId ,"Spam:User","kick")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم قفـل التكرار").lockKick, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/unmute_link') then
local UserId = Text:match('(%d+)/unmute_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:Link"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الرابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_welcome') then
local UserId = Text:match('(%d+)/unmute_welcome')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:Welcome"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الترحيب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_Id') then
local UserId = Text:match('(%d+)/unmute_Id')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:Id"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الايدي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_IdPhoto') then
local UserId = Text:match('(%d+)/unmute_IdPhoto')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:IdPhoto"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الايدي بالصوره").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_ryple') then
local UserId = Text:match('(%d+)/unmute_ryple')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:Reply"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر ردود المدير").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_ryplesudo') then
local UserId = Text:match('(%d+)/unmute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:ReplySudo"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر ردود المطور").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_setadmib') then
local UserId = Text:match('(%d+)/unmute_setadmib')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:SetId"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الرفع").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kickmembars') then
local UserId = Text:match('(%d+)/unmute_kickmembars')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:BanId"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الطرد - الحظر").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_games') then
local UserId = Text:match('(%d+)/unmute_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:Games"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unmute_kickme') then
local UserId = Text:match('(%d+)/unmute_kickme')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Status:KickMe"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تعطيل امر اطردني").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/mute_link') then
local UserId = Text:match('(%d+)/mute_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:Link"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الرابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_welcome') then
local UserId = Text:match('(%d+)/mute_welcome')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:Welcome"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الترحيب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_Id') then
local UserId = Text:match('(%d+)/mute_Id')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:Id"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الايدي").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_IdPhoto') then
local UserId = Text:match('(%d+)/mute_IdPhoto')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:IdPhoto"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الايدي بالصوره").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryple') then
local UserId = Text:match('(%d+)/mute_ryple')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:Reply"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر ردود المدير").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_ryplesudo') then
local UserId = Text:match('(%d+)/mute_ryplesudo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:ReplySudo"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر ردود المطور").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_setadmib') then
local UserId = Text:match('(%d+)/mute_setadmib')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:SetId"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الرفع").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kickmembars') then
local UserId = Text:match('(%d+)/mute_kickmembars')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:BanId"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الطرد - الحظر").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_games') then
local UserId = Text:match('(%d+)/mute_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:Games"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/mute_kickme') then
local UserId = Text:match('(%d+)/mute_kickme')
if tonumber(IdUser) == tonumber(UserId) then
Redis:set(BLANK.."BLANK:Status:KickMe"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'listallAddorrem'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم تفعيل امر اطردني").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/addAdmins@(.*)') then
local UserId = {Text:match('(%d+)/addAdmins@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
local Info_Members = LuaTele.getSupergroupMembers(UserId[2], "Administrators", "*", 0, 200)
local List_Members = Info_Members.members
x = 0
y = 0
for k, v in pairs(List_Members) do
if Info_Members.members[k].bot_info == nil then
if Info_Members.members[k].status.luatele == "chatMemberStatusCreator" then
Redis:sadd(BLANK.."BLANK:TheBasics:Group"..UserId[2],v.member_id.user_id) 
x = x + 1
else
Redis:sadd(BLANK.."BLANK:Addictive:Group"..UserId[2],v.member_id.user_id) 
y = y + 1
end
end
end
LuaTele.answerCallbackQuery(data.id, "☆︙تم ترقيه {"..y.."} ادمنيه \n☆︙تم ترقية المالك ", true)
end
end
if Text and Text:match('(%d+)/LockAllGroup@(.*)') then
local UserId = {Text:match('(%d+)/LockAllGroup@(.*)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
Redis:set(BLANK.."BLANK:Lock:tagservrbot"..UserId[2],true)   
list ={"Lock:Bot:kick","Lock:User:Name","Lock:hashtak","Lock:Cmd","Lock:Link","Lock:forward","Lock:Keyboard","Lock:geam","Lock:Photo","Lock:Animation","Lock:Video","Lock:Audio","Lock:vico","Lock:Sticker","Lock:Document","Lock:Unsupported","Lock:Markdaun","Lock:Contact","Lock:Spam"}
for i,lock in pairs(list) do 
Redis:set(BLANK..'BLANK:'..lock..UserId[2],"del")    
end
LuaTele.answerCallbackQuery(data.id, "☆︙تم قفل جميع الاوامر بنجاح  ", true)
end
end
if Text and Text:match('/leftgroup@(.*)') then
local UserId = Text:match('/leftgroup@(.*)')
LuaTele.answerCallbackQuery(data.id, "☆︙تم مغادره البوت من المجموعه", true)
LuaTele.leaveChat(UserId)
end


if Text and Text:match('(%d+)/groupNumseteng//(%d+)') then
local UserId = {Text:match('(%d+)/groupNumseteng//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
return GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id)
end
end
if Text and Text:match('(%d+)/groupNum1//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum1//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).change_info) == 1 then
LuaTele.answerCallbackQuery(data.id, "☆︙تم تعطيل صلاحيه تغيير المعلومات", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,'❬ ❌ ❭',nil,nil,nil,nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,0, 0, 0, 0,0,0,1,0})
else
LuaTele.answerCallbackQuery(data.id, "☆︙تم تفعيل صلاحيه تغيير المعلومات", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,'❬ ✔️ ❭',nil,nil,nil,nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,1, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum2//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum2//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).pin_messages) == 1 then
LuaTele.answerCallbackQuery(data.id, "☆︙تم تعطيل صلاحيه التثبيت", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,'❬ ❌ ❭',nil,nil,nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,0, GetAdminsNum(ChatId,UserId[2]).promote})
else
LuaTele.answerCallbackQuery(data.id, "☆︙تم تفعيل صلاحيه التثبيت", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,'❬ ✔️ ❭',nil,nil,nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,1, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum3//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum3//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).restrict_members) == 1 then
LuaTele.answerCallbackQuery(data.id, "☆︙تم تعطيل صلاحيه الحظر", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,'❬ ❌ ❭',nil,nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, 0 ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
LuaTele.answerCallbackQuery(data.id, "☆︙تم تفعيل صلاحيه الحظر", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,'❬ ✔️ ❭',nil,nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, 1 ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum4//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum4//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).invite_users) == 1 then
LuaTele.answerCallbackQuery(data.id, "☆︙تم تعطيل صلاحيه دعوه المستخدمين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,'❬ ❌ ❭',nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, 0, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
LuaTele.answerCallbackQuery(data.id, "☆︙تم تفعيل صلاحيه دعوه المستخدمين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,'❬ ✔️ ❭',nil,nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, 1, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum5//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum5//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).delete_messages) == 1 then
LuaTele.answerCallbackQuery(data.id, "☆︙تم تعطيل صلاحيه مسح الرسائل", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,'❬ ❌ ❭',nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, 0, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
else
LuaTele.answerCallbackQuery(data.id, "☆︙تم تفعيل صلاحيه مسح الرسائل", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,'❬ ✔️ ❭',nil)
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, 1, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, GetAdminsNum(ChatId,UserId[2]).promote})
end
end
end
if Text and Text:match('(%d+)/groupNum6//(%d+)') then
local UserId = {Text:match('(%d+)/groupNum6//(%d+)')}
if tonumber(IdUser) == tonumber(UserId[1]) then
if tonumber(GetAdminsNum(ChatId,UserId[2]).promote) == 1 then
LuaTele.answerCallbackQuery(data.id, "☆︙تم تعطيل صلاحيه اضافه مشرفين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,nil,'❬ ❌ ❭')
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, 0})
else
LuaTele.answerCallbackQuery(data.id, "☆︙تم تفعيل صلاحيه اضافه مشرفين", true)
GetAdminsSlahe(ChatId,UserId[1],UserId[2],Msg_id,nil,nil,nil,nil,nil,'❬ ✔️ ❭')
LuaTele.setChatMemberStatus(ChatId,UserId[2],'administrator',{0 ,GetAdminsNum(ChatId,UserId[2]).change_info, 0, 0, GetAdminsNum(ChatId,UserId[2]).delete_messages, GetAdminsNum(ChatId,UserId[2]).invite_users, GetAdminsNum(ChatId,UserId[2]).restrict_members ,GetAdminsNum(ChatId,UserId[2]).pin_messages, 1})
end
end
end

if Text and Text:match('(%d+)/web') then
local UserId = Text:match('(%d+)/web')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).web == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, false, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, true, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/info') then
local UserId = Text:match('(%d+)/info')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).info == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, false, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, true, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/invite') then
local UserId = Text:match('(%d+)/invite')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).invite == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, false, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, true, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/pin') then
local UserId = Text:match('(%d+)/pin')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).pin == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, false)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, true)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/media') then
local UserId = Text:match('(%d+)/media')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).media == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, false, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, true, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/messges') then
local UserId = Text:match('(%d+)/messges')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).messges == true then
LuaTele.setChatPermissions(ChatId, false, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, true, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/other') then
local UserId = Text:match('(%d+)/other')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).other == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, false, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, Getpermissions(ChatId).polls, true, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
elseif Text and Text:match('(%d+)/polls') then
local UserId = Text:match('(%d+)/polls')
if tonumber(IdUser) == tonumber(UserId) then
if Getpermissions(ChatId).polls == true then
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, false, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
else
LuaTele.setChatPermissions(ChatId, Getpermissions(ChatId).messges, Getpermissions(ChatId).media, true, Getpermissions(ChatId).other, Getpermissions(ChatId).web, Getpermissions(ChatId).info, Getpermissions(ChatId).invite, Getpermissions(ChatId).pin)
end
Get_permissions(ChatId,IdUser,Msg_id)
end
end
if Text and Text:match('(%d+)/listallAddorrem') then
local UserId = Text:match('(%d+)/listallAddorrem')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = 'تعطيل الرابط', data = IdUser..'/'.. 'unmute_link'},{text = 'تفعيل الرابط', data = IdUser..'/'.. 'mute_link'},
},
{
{text = 'تعطيل الترحيب', data = IdUser..'/'.. 'unmute_welcome'},{text = 'تفعيل الترحيب', data = IdUser..'/'.. 'mute_welcome'},
},
{
{text = 'اتعطيل الايدي', data = IdUser..'/'.. 'unmute_Id'},{text = 'اتفعيل الايدي', data = IdUser..'/'.. 'mute_Id'},
},
{
{text = 'تعطيل الايدي بالصوره', data = IdUser..'/'.. 'unmute_IdPhoto'},{text = 'تفعيل الايدي بالصوره', data = IdUser..'/'.. 'mute_IdPhoto'},
},
{
{text = 'تعطيل ردود المدير', data = IdUser..'/'.. 'unmute_ryple'},{text = 'تفعيل ردود المدير', data = IdUser..'/'.. 'mute_ryple'},
},
{
{text = 'تعطيل ردود المطور', data = IdUser..'/'.. 'unmute_ryplesudo'},{text = 'تفعيل ردود المطور', data = IdUser..'/'.. 'mute_ryplesudo'},
},
{
{text = 'تعطيل الرفع', data = IdUser..'/'.. 'unmute_setadmib'},{text = 'تفعيل الرفع', data = IdUser..'/'.. 'mute_setadmib'},
},
{
{text = 'تعطيل الطرد', data = IdUser..'/'.. 'unmute_kickmembars'},{text = 'تفعيل الطرد', data = IdUser..'/'.. 'mute_kickmembars'},
},
{
{text = 'تعطيل الالعاب', data = IdUser..'/'.. 'unmute_games'},{text = 'تفعيل الالعاب', data = IdUser..'/'.. 'mute_games'},
},
{
{text = 'تعطيل اطردني', data = IdUser..'/'.. 'unmute_kickme'},{text = 'تفعيل اطردني', data = IdUser..'/'.. 'mute_kickme'},
},
{
{text = '{ القائمه الرئيسيه }', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data =IdUser..'/'.. 'delAmr'}
},
}
}
return LuaTele.editMessageText(ChatId,Msg_id,'☆︙اوامر التفعيل والتعطيل ', 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/NextSeting') then
local UserId = Text:match('(%d+)/NextSeting')
if tonumber(IdUser) == tonumber(UserId) then
local Text = "*\n☆︙اعدادات المجموعه ".."\n🔏︙علامة ال (✔️) تعني مقفول".."\n🔓︙علامة ال (❌) تعني مفتوح*"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(ChatId).lock_fwd, data = '&'},{text = 'التوجبه : ', data =IdUser..'/'.. 'Status_fwd'},
},
{
{text = GetSetieng(ChatId).lock_muse, data = '&'},{text = 'الصوت : ', data =IdUser..'/'.. 'Status_audio'},
},
{
{text = GetSetieng(ChatId).lock_ste, data = '&'},{text = 'الملصقات : ', data =IdUser..'/'.. 'Status_stikear'},
},
{
{text = GetSetieng(ChatId).lock_phon, data = '&'},{text = 'الجهات : ', data =IdUser..'/'.. 'Status_phone'},
},
{
{text = GetSetieng(ChatId).lock_join, data = '&'},{text = 'الدخول : ', data =IdUser..'/'.. 'Status_joine'},
},
{
{text = GetSetieng(ChatId).lock_add, data = '&'},{text = 'الاضافه : ', data =IdUser..'/'.. 'Status_addmem'},
},
{
{text = GetSetieng(ChatId).lock_self, data = '&'},{text = 'بصمه فيديو : ', data =IdUser..'/'.. 'Status_videonote'},
},
{
{text = GetSetieng(ChatId).lock_pin, data = '&'},{text = 'التثبيت : ', data =IdUser..'/'.. 'Status_pin'},
},
{
{text = GetSetieng(ChatId).lock_tagservr, data = '&'},{text = 'الاشعارات : ', data =IdUser..'/'.. 'Status_tgservir'},
},
{
{text = GetSetieng(ChatId).lock_mark, data = '&'},{text = 'الماركدون : ', data =IdUser..'/'.. 'Status_markdaun'},
},
{
{text = GetSetieng(ChatId).lock_edit, data = '&'},{text = 'التعديل : ', data =IdUser..'/'.. 'Status_edits'},
},
{
{text = GetSetieng(ChatId).lock_geam, data = '&'},{text = 'الالعاب : ', data =IdUser..'/'.. 'Status_games'},
},
{
{text = GetSetieng(ChatId).flood, data = '&'},{text = 'التكرار : ', data =IdUser..'/'.. 'Status_flood'},
},
{
{text = '- الرجوع ... ', data =IdUser..'/'.. 'NoNextSeting'}
},
{
{text = '{ القائمه الرئيسيه }', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data =IdUser..'/'.. '/delAmr'}
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,Text, 'md', false, false, reply_markup)
end
end
if Text and Text:match('(%d+)/NoNextSeting') then
local UserId = Text:match('(%d+)/NoNextSeting')
if tonumber(IdUser) == tonumber(UserId) then
local Text = "*\n☆︙اعدادات المجموعه ".."\n🔏︙علامة ال (✔️) تعني مقفول".."\n☆︙علامة ال (❌) تعني مفتوح*"
local reply_markup = LuaTele.replyMarkup{
type = 'inline',
data = {
{
{text = GetSetieng(ChatId).lock_links, data = '&'},{text = 'الروابط : ', data =IdUser..'/'.. 'Status_link'},
},
{
{text = GetSetieng(ChatId).lock_spam, data = '&'},{text = 'الكلايش : ', data =IdUser..'/'.. 'Status_spam'},
},
{
{text = GetSetieng(ChatId).lock_inlin, data = '&'},{text = 'الكيبورد : ', data =IdUser..'/'.. 'Status_keypord'},
},
{
{text = GetSetieng(ChatId).lock_vico, data = '&'},{text = 'الاغاني : ', data =IdUser..'/'.. 'Status_voice'},
},
{
{text = GetSetieng(ChatId).lock_gif, data = '&'},{text = 'المتحركه : ', data =IdUser..'/'.. 'Status_gif'},
},
{
{text = GetSetieng(ChatId).lock_file, data = '&'},{text = 'الملفات : ', data =IdUser..'/'.. 'Status_files'},
},
{
{text = GetSetieng(ChatId).lock_text, data = '&'},{text = 'الدردشه : ', data =IdUser..'/'.. 'Status_text'},
},
{
{text = GetSetieng(ChatId).lock_ved, data = '&'},{text = 'الفيديو : ', data =IdUser..'/'.. 'Status_video'},
},
{
{text = GetSetieng(ChatId).lock_photo, data = '&'},{text = 'الصور : ', data =IdUser..'/'.. 'Status_photo'},
},
{
{text = GetSetieng(ChatId).lock_user, data = '&'},{text = 'المعرفات : ', data =IdUser..'/'.. 'Status_username'},
},
{
{text = GetSetieng(ChatId).lock_hash, data = '&'},{text = 'التاك : ', data =IdUser..'/'.. 'Status_tags'},
},
{
{text = GetSetieng(ChatId).lock_bots, data = '&'},{text = 'البوتات : ', data =IdUser..'/'.. 'Status_bots'},
},
{
{text = '- التالي ... ', data =IdUser..'/'.. 'NextSeting'}
},
{
{text = '{ القائمه الرئيسيه }', data = IdUser..'/helpall'},
},
{
{text = '- اخفاء الامر ', data =IdUser..'/'.. 'delAmr'}
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,Text, 'md', false, false, reply_markup)
end
end 
if Text and Text:match('(%d+)/delAmr') then
local UserId = Text:match('(%d+)/delAmr')
if tonumber(IdUser) == tonumber(UserId) then
return LuaTele.deleteMessages(ChatId,{[1]= Msg_id})
end
end
if Text and Text:match('(%d+)/Status_link') then
local UserId = Text:match('(%d+)/Status_link')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الروابط', data =UserId..'/'.. 'lock_link'},{text = 'قفل الروابط بالكتم', data =UserId..'/'.. 'lock_linkktm'},
},
{
{text = 'قفل الروابط بالطرد', data =UserId..'/'.. 'lock_linkkick'},{text = 'قفل الروابط بالتقييد', data =UserId..'/'.. 'lock_linkkid'},
},
{
{text = 'فتح الروابط', data =UserId..'/'.. 'unlock_link'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الروابط", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_spam') then
local UserId = Text:match('(%d+)/Status_spam')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الكلايش', data =UserId..'/'.. 'lock_spam'},{text = 'قفل الكلايش بالكتم', data =UserId..'/'.. 'lock_spamktm'},
},
{
{text = 'قفل الكلايش بالطرد', data =UserId..'/'.. 'lock_spamkick'},{text = 'قفل الكلايش بالتقييد', data =UserId..'/'.. 'lock_spamid'},
},
{
{text = 'فتح الكلايش', data =UserId..'/'.. 'unlock_spam'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الكلايش", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_keypord') then
local UserId = Text:match('(%d+)/Status_keypord')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الكيبورد', data =UserId..'/'.. 'lock_keypord'},{text = 'قفل الكيبورد بالكتم', data =UserId..'/'.. 'lock_keypordktm'},
},
{
{text = 'قفل الكيبورد بالطرد', data =UserId..'/'.. 'lock_keypordkick'},{text = 'قفل الكيبورد بالتقييد', data =UserId..'/'.. 'lock_keypordkid'},
},
{
{text = 'فتح الكيبورد', data =UserId..'/'.. 'unlock_keypord'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الكيبورد", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_voice') then
local UserId = Text:match('(%d+)/Status_voice')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاغاني', data =UserId..'/'.. 'lock_voice'},{text = 'قفل الاغاني بالكتم', data =UserId..'/'.. 'lock_voicektm'},
},
{
{text = 'قفل الاغاني بالطرد', data =UserId..'/'.. 'lock_voicekick'},{text = 'قفل الاغاني بالتقييد', data =UserId..'/'.. 'lock_voicekid'},
},
{
{text = 'فتح الاغاني', data =UserId..'/'.. 'unlock_voice'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الاغاني", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_gif') then
local UserId = Text:match('(%d+)/Status_gif')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل المتحركه', data =UserId..'/'.. 'lock_gif'},{text = 'قفل المتحركه بالكتم', data =UserId..'/'.. 'lock_gifktm'},
},
{
{text = 'قفل المتحركه بالطرد', data =UserId..'/'.. 'lock_gifkick'},{text = 'قفل المتحركه بالتقييد', data =UserId..'/'.. 'lock_gifkid'},
},
{
{text = 'فتح المتحركه', data =UserId..'/'.. 'unlock_gif'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر المتحركات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_files') then
local UserId = Text:match('(%d+)/Status_files')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الملفات', data =UserId..'/'.. 'lock_files'},{text = 'قفل الملفات بالكتم', data =UserId..'/'.. 'lock_filesktm'},
},
{
{text = 'قفل النلفات بالطرد', data =UserId..'/'.. 'lock_fileskick'},{text = 'قفل الملقات بالتقييد', data =UserId..'/'.. 'lock_fileskid'},
},
{
{text = 'فتح الملقات', data =UserId..'/'.. 'unlock_files'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الملفات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_text') then
local UserId = Text:match('(%d+)/Status_text')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الدردشه', data =UserId..'/'.. 'lock_text'},
},
{
{text = 'فتح الدردشه', data =UserId..'/'.. 'unlock_text'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الدردشه", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_video') then
local UserId = Text:match('(%d+)/Status_video')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الفيديو', data =UserId..'/'.. 'lock_video'},{text = 'قفل الفيديو بالكتم', data =UserId..'/'.. 'lock_videoktm'},
},
{
{text = 'قفل الفيديو بالطرد', data =UserId..'/'.. 'lock_videokick'},{text = 'قفل الفيديو بالتقييد', data =UserId..'/'.. 'lock_videokid'},
},
{
{text = 'فتح الفيديو', data =UserId..'/'.. 'unlock_video'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الفيديو", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_photo') then
local UserId = Text:match('(%d+)/Status_photo')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الصور', data =UserId..'/'.. 'lock_photo'},{text = 'قفل الصور بالكتم', data =UserId..'/'.. 'lock_photoktm'},
},
{
{text = 'قفل الصور بالطرد', data =UserId..'/'.. 'lock_photokick'},{text = 'قفل الصور بالتقييد', data =UserId..'/'.. 'lock_photokid'},
},
{
{text = 'فتح الصور', data =UserId..'/'.. 'unlock_photo'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الصور", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_username') then
local UserId = Text:match('(%d+)/Status_username')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل المعرفات', data =UserId..'/'.. 'lock_username'},{text = 'قفل المعرفات بالكتم', data =UserId..'/'.. 'lock_usernamektm'},
},
{
{text = 'قفل المعرفات بالطرد', data =UserId..'/'.. 'lock_usernamekick'},{text = 'قفل المعرفات بالتقييد', data =UserId..'/'.. 'lock_usernamekid'},
},
{
{text = 'فتح المعرفات', data =UserId..'/'.. 'unlock_username'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر المعرفات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tags') then
local UserId = Text:match('(%d+)/Status_tags')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التاك', data =UserId..'/'.. 'lock_tags'},{text = 'قفل التاك بالكتم', data =UserId..'/'.. 'lock_tagsktm'},
},
{
{text = 'قفل التاك بالطرد', data =UserId..'/'.. 'lock_tagskick'},{text = 'قفل التاك بالتقييد', data =UserId..'/'.. 'lock_tagskid'},
},
{
{text = 'فتح التاك', data =UserId..'/'.. 'unlock_tags'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر التاك", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_bots') then
local UserId = Text:match('(%d+)/Status_bots')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل البوتات', data =UserId..'/'.. 'lock_bots'},{text = 'قفل البوتات بالطرد', data =UserId..'/'.. 'lock_botskick'},
},
{
{text = 'فتح البوتات', data =UserId..'/'.. 'unlock_bots'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر البوتات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_fwd') then
local UserId = Text:match('(%d+)/Status_fwd')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التوجيه', data =UserId..'/'.. 'lock_fwd'},{text = 'قفل التوجيه بالكتم', data =UserId..'/'.. 'lock_fwdktm'},
},
{
{text = 'قفل التوجيه بالطرد', data =UserId..'/'.. 'lock_fwdkick'},{text = 'قفل التوجيه بالتقييد', data =UserId..'/'.. 'lock_fwdkid'},
},
{
{text = 'فتح التوجيه', data =UserId..'/'.. 'unlock_link'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر التوجيه", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_audio') then
local UserId = Text:match('(%d+)/Status_audio')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الصوت', data =UserId..'/'.. 'lock_audio'},{text = 'قفل الصوت بالكتم', data =UserId..'/'.. 'lock_audioktm'},
},
{
{text = 'قفل الصوت بالطرد', data =UserId..'/'.. 'lock_audiokick'},{text = 'قفل الصوت بالتقييد', data =UserId..'/'.. 'lock_audiokid'},
},
{
{text = 'فتح الصوت', data =UserId..'/'.. 'unlock_audio'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الصوت", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_stikear') then
local UserId = Text:match('(%d+)/Status_stikear')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الملصقات', data =UserId..'/'.. 'lock_stikear'},{text = 'قفل الملصقات بالكتم', data =UserId..'/'.. 'lock_stikearktm'},
},
{
{text = 'قفل الملصقات بالطرد', data =UserId..'/'.. 'lock_stikearkick'},{text = 'قفل الملصقات بالتقييد', data =UserId..'/'.. 'lock_stikearkid'},
},
{
{text = 'فتح الملصقات', data =UserId..'/'.. 'unlock_stikear'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الملصقات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_phone') then
local UserId = Text:match('(%d+)/Status_phone')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الجهات', data =UserId..'/'.. 'lock_phone'},{text = 'قفل الجهات بالكتم', data =UserId..'/'.. 'lock_phonektm'},
},
{
{text = 'قفل الجهات بالطرد', data =UserId..'/'.. 'lock_phonekick'},{text = 'قفل الجهات بالتقييد', data =UserId..'/'.. 'lock_phonekid'},
},
{
{text = 'فتح الجهات', data =UserId..'/'.. 'unlock_phone'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الجهات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_joine') then
local UserId = Text:match('(%d+)/Status_joine')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الدخول', data =UserId..'/'.. 'lock_joine'},
},
{
{text = 'فتح الدخول', data =UserId..'/'.. 'unlock_joine'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الدخول", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_addmem') then
local UserId = Text:match('(%d+)/Status_addmem')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاضافه', data =UserId..'/'.. 'lock_addmem'},
},
{
{text = 'فتح الاضافه', data =UserId..'/'.. 'unlock_addmem'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الاضافه", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_videonote') then
local UserId = Text:match('(%d+)/Status_videonote')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل السيلفي', data =UserId..'/'.. 'lock_videonote'},{text = 'قفل السيلفي بالكتم', data =UserId..'/'.. 'lock_videonotektm'},
},
{
{text = 'قفل السيلفي بالطرد', data =UserId..'/'.. 'lock_videonotekick'},{text = 'قفل السيلفي بالتقييد', data =UserId..'/'.. 'lock_videonotekid'},
},
{
{text = 'فتح السيلفي', data =UserId..'/'.. 'unlock_videonote'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر بصمه الفيديو", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_pin') then
local UserId = Text:match('(%d+)/Status_pin')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التثبيت', data =UserId..'/'.. 'lock_pin'},
},
{
{text = 'فتح التثبيت', data =UserId..'/'.. 'unlock_pin'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر التثبيت", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_tgservir') then
local UserId = Text:match('(%d+)/Status_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الاشعارات', data =UserId..'/'.. 'lock_tgservir'},
},
{
{text = 'فتح الاشعارات', data =UserId..'/'.. 'unlock_tgservir'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الاشعارات", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_markdaun') then
local UserId = Text:match('(%d+)/Status_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الماركداون', data =UserId..'/'.. 'lock_markdaun'},{text = 'قفل الماركداون بالكتم', data =UserId..'/'.. 'lock_markdaunktm'},
},
{
{text = 'قفل الماركداون بالطرد', data =UserId..'/'.. 'lock_markdaunkick'},{text = 'قفل الماركداون بالتقييد', data =UserId..'/'.. 'lock_markdaunkid'},
},
{
{text = 'فتح الماركداون', data =UserId..'/'.. 'unlock_markdaun'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الماركدون", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_edits') then
local UserId = Text:match('(%d+)/Status_edits')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التعديل', data =UserId..'/'.. 'lock_edits'},
},
{
{text = 'فتح التعديل', data =UserId..'/'.. 'unlock_edits'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر التعديل", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_games') then
local UserId = Text:match('(%d+)/Status_games')
if tonumber(IdUser) == tonumber(UserId) then
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل الالعاب', data =UserId..'/'.. 'lock_games'},{text = 'قفل الالعاب بالكتم', data =UserId..'/'.. 'lock_gamesktm'},
},
{
{text = 'قفل الالعاب بالطرد', data =UserId..'/'.. 'lock_gameskick'},{text = 'قفل الالعاب بالتقييد', data =UserId..'/'.. 'lock_gameskid'},
},
{
{text = 'فتح الالعاب', data =UserId..'/'.. 'unlock_games'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر الالعاب", 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/Status_flood') then
local UserId = Text:match('(%d+)/Status_flood')
if tonumber(IdUser) == tonumber(UserId) then

local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {
{
{text = 'قفل التكرار', data =UserId..'/'.. 'lock_flood'},{text = 'قفل التكرار بالكتم', data =UserId..'/'.. 'lock_floodktm'},
},
{
{text = 'قفل التكرار بالطرد', data =UserId..'/'.. 'lock_floodkick'},{text = 'قفل التكرار بالتقييد', data =UserId..'/'.. 'lock_floodkid'},
},
{
{text = 'فتح التكرار', data =UserId..'/'.. 'unlock_flood'},
},
{
{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},
},
}
}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙عليك اختيار نوع القفل او الفتح على امر التكرار", 'md', true, false, reply_markup)
end



elseif Text and Text:match('(%d+)/unlock_link') then
local UserId = Text:match('(%d+)/unlock_link')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Link"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الروابط").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_spam') then
local UserId = Text:match('(%d+)/unlock_spam')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Spam"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الكلايش").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_keypord') then
local UserId = Text:match('(%d+)/unlock_keypord')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Keyboard"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الكيبورد").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_voice') then
local UserId = Text:match('(%d+)/unlock_voice')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:vico"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الاغاني").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_gif') then
local UserId = Text:match('(%d+)/unlock_gif')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Animation"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح المتحركات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_files') then
local UserId = Text:match('(%d+)/unlock_files')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Document"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الملفات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_text') then
local UserId = Text:match('(%d+)/unlock_text')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:text"..ChatId,true) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الدردشه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_video') then
local UserId = Text:match('(%d+)/unlock_video')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Video"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الفيديو").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_photo') then
local UserId = Text:match('(%d+)/unlock_photo')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Photo"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الصور").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_username') then
local UserId = Text:match('(%d+)/unlock_username')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:User:Name"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح المعرفات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_tags') then
local UserId = Text:match('(%d+)/unlock_tags')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:hashtak"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح التاك").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_bots') then
local UserId = Text:match('(%d+)/unlock_bots')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Bot:kick"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح البوتات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_fwd') then
local UserId = Text:match('(%d+)/unlock_fwd')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:forward"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح التوجيه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_audio') then
local UserId = Text:match('(%d+)/unlock_audio')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Audio"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الصوت").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_stikear') then
local UserId = Text:match('(%d+)/unlock_stikear')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Sticker"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الملصقات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_phone') then
local UserId = Text:match('(%d+)/unlock_phone')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Contact"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الجهات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_joine') then
local UserId = Text:match('(%d+)/unlock_joine')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Join"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الدخول").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_addmem') then
local UserId = Text:match('(%d+)/unlock_addmem')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:AddMempar"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الاضافه").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_videonote') then
local UserId = Text:match('(%d+)/unlock_videonote')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Unsupported"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح بصمه الفيديو").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_pin') then
local UserId = Text:match('(%d+)/unlock_pin')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:lockpin"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح التثبيت").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_tgservir') then
local UserId = Text:match('(%d+)/unlock_tgservir')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:tagservr"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الاشعارات").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_markdaun') then
local UserId = Text:match('(%d+)/unlock_markdaun')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:Markdaun"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الماركدون").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_edits') then
local UserId = Text:match('(%d+)/unlock_edits')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:edit"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح التعديل").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_games') then
local UserId = Text:match('(%d+)/unlock_games')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Lock:geam"..ChatId)  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح الالعاب").unLock, 'md', true, false, reply_markup)
end
elseif Text and Text:match('(%d+)/unlock_flood') then
local UserId = Text:match('(%d+)/unlock_flood')
if tonumber(IdUser) == tonumber(UserId) then
Redis:hdel(BLANK.."BLANK:Spam:Group:User"..ChatId ,"Spam:User")  
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,Reply_Status(IdUser,"☆︙تم فتح التكرار").unLock, 'md', true, false, reply_markup)
end
end
if Text and Text:match('(%d+)/Developers') then
local UserId = Text:match('(%d+)/Developers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Developers:Groups") 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح مطورين البوت", 'md', false)
end
elseif Text and Text:match('(%d+)/DevelopersQ') then
local UserId = Text:match('(%d+)/DevelopersQ')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:DevelopersQ:Groups") 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح مطورين الثانوين من البوت", 'md', false)
end
elseif Text and Text:match('(%d+)/TheBasics') then
local UserId = Text:match('(%d+)/TheBasics')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:TheBasics:Group"..ChatId) 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح المنشئين الاساسيين", 'md', false)
end
elseif Text and Text:match('(%d+)/Originators') then
local UserId = Text:match('(%d+)/Originators')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Originators:Group"..ChatId) 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح منشئين المجموعه", 'md', false)
end
elseif Text and Text:match('(%d+)/Managers') then
local UserId = Text:match('(%d+)/Managers')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Managers:Group"..ChatId) 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح المدراء", 'md', false)
end
elseif Text and Text:match('(%d+)/Addictive') then
local UserId = Text:match('(%d+)/Addictive')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Addictive:Group"..ChatId) 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح ادمنيه المجموعه", 'md', false)
end
elseif Text and Text:match('(%d+)/DelDistinguished') then
local UserId = Text:match('(%d+)/DelDistinguished')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:Distinguished:Group"..ChatId) 
local reply_markup = LuaTele.replyMarkup{type = 'inline',data = {{{text = '- رجوع', data =UserId..'/'.. 'NoNextSeting'},},}}
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح المميزين", 'md', false)
end
elseif Text and Text:match('(%d+)/BanAll') then
local UserId = Text:match('(%d+)/BanAll')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:BanAll:Groups") 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح المحظورين عام", 'md', false)
end
elseif Text and Text:match('(%d+)/BanGroup') then
local UserId = Text:match('(%d+)/BanGroup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:BanGroup:Group"..ChatId) 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح المحظورين", 'md', false)
end
elseif Text and Text:match('(%d+)/SilentGroupGroup') then
local UserId = Text:match('(%d+)/SilentGroupGroup')
if tonumber(IdUser) == tonumber(UserId) then
Redis:del(BLANK.."BLANK:SilentGroup:Group"..ChatId) 
LuaTele.editMessageText(ChatId,Msg_id,"☆︙تم مسح المكتومين", 'md', false)
end
end

end
end


luatele.run(CallBackLua)
 





