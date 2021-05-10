class BrowseController < ApplicationController

    def browse
        #where return array of ids of user which current user has liked
        linked_account_ids = Like.where(account_id: current_account.id).map(&:linked_account_id)
        #appends cuurent user to the array
        linked_account_ids << current_account.id
        #not display current user and users that current user have liked
        @users =Account.where.not(id: linked_account_ids)
        @matches = current_account.matches
        
    end

    def approve
        account_id = params[:id] #id of person who current_user liked
        #user swipes right

        new_like = Like.new(linked_account_id: account_id)
        new_like.account_id = current_account.id  #id of current_user

        if new_like.save
            #checks if the liked user has already liked current_user
            existing_like = Like.where(account_id: account_id, linked_account_id: current_account.id).count
            @they_like_us = existing_like > 0

        end
    end

    def decline
        #user swipes left
    end

    def open_conversation
        id = params[:id]
        @profile = Account.find(id)
        likes = Like.where(account_id: current_account.id, linked_account_id: id)
        @match = likes.first if likes.size > 0

        conversation = Conversation.between(id,current_account.id)


        @conversation = conversation.size > 0 ? conversation.first : Conversation.new
        @message = @conversation.messages.build

        if @profile.present?

            respond_to do |format|
                format.js {
                    render "browse/conversation"
                }
            end
        end
    end

end