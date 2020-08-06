page 50102 "Reward List"
{

    // The "CardPageId" is set to the Reward Card previously created.
    // This will allow users to open records from the list in the "Reward Card" page.
    CardPageId = "Reward Card";
    // Specify that this page will be a list page.
    PageType = List;

    // The data of this page is taken from the "Reward" table.
    SourceTable = Reward;

    // The page will be part of the "Lists" group of search results.
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward that the customer has at this point.';
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}