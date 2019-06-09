#write a method that returns true if the argument looks like a URL
def url?(string)
  if string.match(/^https?:\/\/\S+\z/)    #use ? instead of * in case httpsss
    true
  else
    false
  end 
end 
#to make one line us !! before string.match and forget the if statement 

url?('http://launchschool.com')   # -> true
url?('https://example.com')       # -> true
url?('https://example.com hello') # -> false
url?('   https://example.com')    # -> false

