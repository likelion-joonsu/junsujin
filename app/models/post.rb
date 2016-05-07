class Post < ActiveRecord::Base
    mount_uploader :img_file, S3Uploader
end
