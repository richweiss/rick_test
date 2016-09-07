class PicturesController < ApplicationController

def new

    # if unsigned_mode?
    #   @unsigned = true
    #   # make sure we have the appropriate preset
    #   @preset_name = "sample_" + Digest::SHA1.hexdigest(Cloudinary.config.api_key + Cloudinary.config.api_secret)
    #   begin
    #     preset = Cloudinary::Api.upload_preset(@preset_name)
    #     if !preset["settings"]["return_delete_token"]
    #       Cloudinary::Api.update_upload_preset(@preset_name, :return_delete_token=>true)
    #     end
    #   rescue
    #     # An upload preset may contain (almost) all parameters that are used in upload. The following is just for illustration purposes
    #     Cloudinary::Api.create_upload_preset(:name => @preset_name, :unsigned => true, :folder => "preset_folder", :return_delete_token=>true)
    #   end
    # end
    # render view_for_new
  end

  def create
  	# Cloudinary::Uploader.upload(params[:file])
 

  	 #Cloudinary::Uploader.upload(path)
  
  	   render plain: File.absolute_path(params[:file]).inspect

  end

  #private
  #def path
   #File.absolute_path(params[:file])
 #end




end
