class Post < ActiveRecord::Base
    mount_uploader :img_file, S3Uploader
    has_many :replies
end
