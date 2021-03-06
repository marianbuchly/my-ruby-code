require 'sinatra'
require './contacts_file'

set :port, 4567

get '/' do
   "<h1>Tacta Contact Manager</h1>"
end


get '/contacts' do
   @contacts = read_contacts    #/kan contacts uit contacts_file.rb lezen
   erb :'contacts/index' #/ maakt er een html content van. Kan hier ook direct HTML zetten
end

get '/contacts/new' do
   erb :'contacts/new'
end

# werkt nog niet
# get '/contacts/search' do
#    read_contacts.each do |contact|
#       @contact =read_contacts[:name] =~ /\b#{pattern}/i
#          show( contact)
#          erb :'contacts/search'
#
#    end
# end


get '/contacts/:i' do         #/ is de url/1 en geeft contact met indexnummer 1
   @i = params[:i].to_i
   contacts = read_contacts  #/pakt json methode hier
   @contact = contacts[@i]
   erb :'contacts/show'
end

post '/contacts' do
   new_contact = { name: params[:name], phone: params[:phone], email: params[:email] }

   contacts = read_contacts
   contacts << new_contact
   write_contacts( contacts )

   i = contacts.length - 1

   redirect "/contacts/#{i}"
end

get '/contacts/:i/edit' do
   @i = params[:i].to_i

   contacts = read_contacts
   @contact = contacts[@i]

   erb :'contacts/edit'
end

post '/contacts/:i/update' do
   i = params[:i].to_i

   updated_contact = { name: params[:name], phone: params[:phone], email: params[:email] }

   contacts = read_contacts
   contacts[i] = updated_contact
   write_contacts( contacts )

   redirect "/contacts/#{i}"
end

get '/contacts/:i/delete' do
   i = params[:i].to_i

   contacts = read_contacts
   contacts.delete_at( i )
   write_contacts( contacts )

   redirect "/contacts"
end
