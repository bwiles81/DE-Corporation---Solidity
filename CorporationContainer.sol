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
        MailingAddress entityBusinessAddress;
        MailingAddress entityNoticeAddress;
        address entityEthAddress;
        bool accreditedInvestor;
        uint entityId;
        string email;
    }
    
    enum approvalType {board, stockholder, other}
  
    struct corporateAction {
        DateTime corporateActionDate;
        Entity[] actors;
        string actionDescription;
        string[] contents;
        approvalType[] approvals;
    }
    
    struct shareClass {
        string name;
    }
    
    struct shareCert {
        shareClass shareCertClass;
        Entity holder;
        DateTime issuanceDate;
        corporateAction[] shareCertActions;
        irlContract[] shareCertInstruments;
    }
    
    struct corporation {
        Entity incorporator;
        Entity[] boardOfDirectors;
        Entity[] advisors;
        Entity[] officers;
        irlContract[] corpContracts;
        corporateAction[] corporateActions;
        shareCert[] stockLedger;
    }
    
}

//© 2019, Benjamin A. Wiles, Esq.

//Permission is hereby granted, free of charge, to any person obtaining a copy
//of this software and associated documentation files (the "Software"), to deal
//in the Software without restriction, including without limitation the rights
//to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//copies of the Software, and to permit persons to whom the Software is
//furnished to do so, subject to the following conditions:

//The above copyright notice and this permission notice shall be included in all
//copies or substantial portions of the Software.

//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//SOFTWARE.
