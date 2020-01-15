include ActionView::Helpers::DateHelper
class Bot < ApplicationRecord
    # search last tweet with some content
    def self.search_words words 
        CLIENT.search(words, lang: "en").first.text 
    end

    #tweet
    def self.tweet status 
        CLIENT.update(status)
    end
  
    #follow another user
    def self.follow_user name
        CLIENT.follow(name)
    end
    
    #find a tweet by ID
    def self.find_tweet id
        CLIENT.status(id)
    end

    def self.updateCuantoVamos
        now = Time.find_zone('Buenos Aires').now
        status = ''
        if (now.day == 14)
            if (now.month == 7)
                status = "Feliz aniversario! Hoy cumplimos: "
            else
                status = "Feliz cumplemes! Hoy vamos: "
            end
        end
        status << distance_of_time_in_words(now, Time.find_zone('Buenos Aires').parse('2017-07-14 09am'),false,:locale => :es)
        tweet(status)
    end

end
