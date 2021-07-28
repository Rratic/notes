import Downloads
Downloads.download("https://www.baidu.com/","tmp/1.html")
# Downloads.download("https://api.ixiaowai.cn/api/api.php","tmp/1.jpg")

r=Downloads.request("https://www.baidu.com/";method="GET")
dump(r)
