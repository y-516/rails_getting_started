class Contact < ApplicationRecord
    #name,email,contentにバリデーション設定,presence:trueで空文字禁止
    validates :name ,:email ,:content,presence:true
    #content,文字数1文字以上140文字以下に設定
    validates :content,length: { in: 1..140 } 
end
