class SpeakcommandController < ApplicationController
  def index
    @commandLine = params[:commandLine]
    @istrue = params[:istrue] 
   	 unless @commandLine.nil?
         SocketClient.givecommand(@commandLine)
       end
  end
end