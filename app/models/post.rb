class Post < ActiveRecord::Base
    mount_uploader :img_file, S3Uploader
    has_many :replies
    validates :title, presence: {message: "제목을 입력해주세요!"}
    validates :content, presence: {message: "내용을 입력해주세요!"}
end
