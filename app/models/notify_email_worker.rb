class NotifyEmailWorker
	@queue= :notify_email
	def self.perform 
		QuestionMailer.notify_email(current_user).deliver_now

	end
end