namespace SharpArchCookbook.Tasks.Commands
{
    using SharpArch.Domain.Commands;

    public class ChangeCustomerAddressResult : CommandResult
    {
        public ChangeCustomerAddressResult(bool success) : base(success)
        {
        }
        
        public string Message { get; set; }
    }
}
