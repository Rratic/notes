import Downloads
import JSON
url="http://fanyi.youdao.com/translate?smartresult=dict&smartresult=rule"
data=Dict{String,String}(
    "from"=>"AUTO",
    "to"=>"AUTO",
    "smartresult"=>"dict",
    "client"=>"fanyideskweb",
    "salt"=>"15801391750396",
    "sign"=>"74bbb50b1bd6c62fbff24be5f3787e2f",
    "ts"=>"1580139175039",
    "bv"=>"e2a78ed30c66e16a857c5b6486a1d326",
    "doctype"=>"json",
    "version"=>"2.1",
    "keyfrom"=>"fanyi.web",
    "action"=>"FY_BY_CLICKBUTTION",
    "i"=>"Hello world!"
)
head=Dict{String,String}(
    "User-Agent"=>"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36"
)
while true
    i::String=readline()
    if i=="exit"
        break
    end
    data["i"]=i
    r=Downloads.request(url;method="POST",input=IOBuffer(JSON.json(data)),headers=head)
    dump(r)
end
