
window.Loading = ->
    mask = "<div class='z' style='background: black;border: medium none;cursor: default;filter:Alpha(Opacity=60);display: none;height: 100%;left: 0;margin: 0; opacity: .6;padding: 0;position: fixed;top: 0;width: 100%;z-index: 998;'></div>"
    loadingHtml = '<div class="spinner"><div class="double-bounce1"></div><div class="double-bounce2"></div></div>'
    loadingCss = '<style type="text/css">.spinner{width: 40px; height: 40px; position: relative; margin: 100px auto; z-index:999 } .double-bounce1, .double-bounce2{width: 100%; height: 100%; border-radius: 50%; background-color: #67CF22; opacity: 0.6; position: absolute; top: 0; left: 0; -webkit-animation: bounce 2.0s infinite ease-in-out; animation: bounce 2.0s infinite ease-in-out;} .double-bounce2{-webkit-animation-delay: -1.0s; animation-delay: -1.0s;} @-webkit-keyframes bounce{0%, 100%{-webkit-transform: scale(0.0)} 50%{-webkit-transform: scale(1.0)}} @keyframes bounce{0%, 100%{transform: scale(0.0); -webkit-transform: scale(0.0);} 50%{transform: scale(1.0); -webkit-transform: scale(1.0);}}</style>'
    html = mask + loadingHtml + loadingCss
    $("body").append(html) if $(".z")
    $(".z").show()
    $(".spinner").show()
    
    return
window.hideLoading = ->
    $(".z").hide()
    $(".spinner").hide()
