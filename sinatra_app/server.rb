require 'sinatra'

get '/' do
  erb :index
end

post '/email' do
  @email =  params[:email]
  puts @email.to_s
  redirect "/"
end

__END__
@@ index
<html>
  <body>
     <h1>Send request to SQS</h1>
     <form action="/email" method="POST">
       <input type="text" name="email" value="gburanov@gmail.com"></input>
       <input type="submit" value="Submit"></input>
     </form>
  </body>
</html>
