pragma solidity >=0.4.0 <0.7.0;

contract DelawareCorporation {

    struct DateTime {
        uint16 year;
        uint8 month;
        uint8 day;
        uint8 hour;
        uint8 minute;
        uint8 second;
        uint8 weekday;
    }
    
    struct MailingAddress {
        string line1;
        string line2;
        string attn;
        string city;
        string state;
        string zip;
    }
    
    enum EntityType {naturalPerson, legalEntity}
    
    struct irlContract {
        string name;
        Entity[] parties;
        string description;
        uint id;
        string[] contents;
        uint category;
        DateTime executionDate;
    }
    
    struct Entity {
        EntityType entityType;
        string name;
        string jxnOfIncorp;
        MailingAddress entityMailingAddress;
        BusinessAddress entityBusinessAddress;
        NoticeAddress entityNoticeAddress;
        address entityAddress;
        bool accreditedInvestor;
        uint entityId;
    }
    
    struct approval {
        bool boardApproval;
        bool stockholderApproval;
        bool otherApproval;
        string contents;
    }
    
    struct corporateAction {
        DateTime corporateActionDateTime;
        Entity[] actors;
        string actionDescription;
        string[] contents;
        approval[] approvals;
    }
    
    struct corporation {
        Entity incorporator;
        Entity[] boardOfDirectors;
        Entity[] stockholders;
        Entity[] advisors;
        irlContract[] corpContracts;
        corporateAction[] corporateActions;
    }
    
}
