class NotesController < ApplicationController

    private

    def note_params
        params.require(:note).permit(
          :name,
          :user_id,
          :business_id,
          :content
          :title
        )
    end
end