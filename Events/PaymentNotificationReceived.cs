namespace PaymentNotifications.MobileBux.WebApi
{
    public class PaymentNotificationReceived
    {
        public PaymentNotificationReceived(int amount)
        {
            Amount = amount;
        }

        public int Amount { get; }
    }
}
