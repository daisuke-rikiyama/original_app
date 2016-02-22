class MessageBoardsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def create
        @message_board = current_user.message_boards.build(message_board_params)
        if @message_board.save
            flash[:success] = "MessageBoard created!"
            redirect_to @message_board
        else
            flash[:danger] = "Failed to create!!"
            redirect_to :back
        end
    end
    
    private
    def message_board_params
        params.require(:message_board).permit(:title, :item_id)
    end
end
