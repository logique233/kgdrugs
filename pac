var domains = {
    "google.com": 1,
    "youtube.com": 1,
    "amplitude.com":1,
    "intercom.io":1,
    "notion.so":1,
    "loggly.com":1,
    "segment.com":1,
    "intercomcdn.com":1,
    "unsplash.com":1,
    "amazonaws.com":1,
    "accounts.google.com":1,
    "googledrive.com":1,
    "drive.google.com":1,
    "*.drive.google.com":1,
    "docs.google.com":1,
    "*.docs.google.com":1,
    "*.c.docs.google.com":1,
    "sheets.google.com":1,
    "slides.google.com":1,
    "takeout.google.com":1,
    "gg.google.com":1,
    "script.google.com":1,
    "ssl.google-analytics.com",
    "video.google.com":1,
    "s.ytimg.com":1,
    "apis.google.com":1,
    "*.googleapis.com":1,
    "*.googleusercontent.com":1,
    "*.gstatic.com":1,
    "*.gvt1.com":1,
    "inputtools.google.com":1,
    "sites.google.com":1,
    "sites.google.com":1,
    "*.sites.google.com":1,
    "*.googlegroups.com":1,
    "ipv4.google.com":1
};
 
var proxy = "SOCKS5 127.0.0.1:1086;  PROXY 127.0.0.1:7777; DIRECT;";
 
var direct = 'DIRECT;';
 
function FindProxyForURL(url, host) {
    var lastPos;
    do {
        if (domains.hasOwnProperty(host)) {
            return proxy;
        }
        lastPos = host.indexOf('.') + 1;
        host = host.slice(lastPos);
    } while (lastPos >= 1);
    return direct;
}
