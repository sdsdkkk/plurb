module Plurb
  module URL
    SITE          = 'http://www.plurk.com'

    # OAuth Paths
    REQUEST_TOKEN = '/OAuth/request_token'
    ACCESS_TOKEN  = '/OAuth/access_token'
    AUTHORIZE     = '/OAuth/authorize'

    # Profile Paths
    GET_OWN_PROFILE = '/APP/Profile/getOwnProfile'
    GET_PUBLIC_PROFILE = '/APP/Profile/getPublicProfile'

    # Timeline Paths
    GET_PLURK = '/APP/Timeline/getPlurk'
    GET_PLURKS = '/APP/Timeline/getPlurks'
    GET_UNREAD_PLURKS = '/APP/Timeline/getUnreadPlurks'
    GET_PUBLIC_PLURKS = '/APP/Timeline/getPublicPlurks'
    PLURK_ADD = '/APP/Timeline/plurkAdd'
    PLURK_DELETE = '/APP/Timeline/plurkDelete'
    PLURK_EDIT = '/APP/Timeline/plurkEdit'
    TOGGLE_COMMENTS = '/APP/Timeline/toggleComments'
    MUTE_PLURKS = '/APP/Timeline/mutePlurks'
    UNMUTE_PLURKS = '/APP/Timeline/unmutePlurks'
    FAVORITE_PLURKS = '/APP/Timeline/favoritePlurks'
    UNFAVORITE_PLURKS = '/APP/Timeline/unfavoritePlurks'
    REPLURK = '/APP/Timeline/replurk'
    UNREPLURK = '/APP/Timeline/unreplurk'
    MARK_AS_READ = '/APP/Timeline/markAsRead'
    UPLOAD_PICTURE = '/APP/Timeline/uploadPicture'
    REPORT_ABUSE = '/APP/Timeline/reportAbuse'

    # Responses Paths
    GET_RESPONSES = '/APP/Responses/get'
    RESPONSE_ADD = '/APP/Responses/responseAdd'
    RESPONSE_DELETE = '/APP/Responses/responseDelete'
  end
end