class MessagesController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def create
        @message = current_user.messages.build(message_params)
        
        if @message.save
            flash[:success] = "Message created!"
            redirect_to :back
        else
            flash[:danger] = "Failed to create!!"
            redirect_to :back
        end
    end
    
    private
    def message_params
        params.require(:message).permit(:message_board_id, :content)
    end
end
