module ApplicationHelper
  def getRecentQuestions
    return Question.order('created_at DESC').first(5)
  end

  def getMostQuestions
    #return Question.comments.count
    return Question.all(:joins => :comments, :group => 'id', :order => 'count(*) DESC')
  end

  def getUsersByMostComments
    #return Question.comments.count
    return User.all(:joins => :comments, :group => 'id', :order => 'count(*) DESC')
  end
end
