class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid? ? true : false
  end

  def execute_transaction
    if (@sender.balance > @amount && @status == "pending") || (@sendir.valid? && @receiver.valid? == false)
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "Transaction rejected. Please check your account balance."
    end
      @status
  end

  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
end
