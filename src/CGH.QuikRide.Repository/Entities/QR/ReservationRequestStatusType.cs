// <auto-generated>
// ReSharper disable ConvertPropertyToExpressionBody
// ReSharper disable DoNotCallOverridableMethodsInConstructor
// ReSharper disable EmptyNamespace
// ReSharper disable InconsistentNaming
// ReSharper disable PartialMethodWithSinglePart
// ReSharper disable PartialTypeWithSinglePart
// ReSharper disable RedundantNameQualifier
// ReSharper disable RedundantOverridenMember
// ReSharper disable UseNameofExpression
// TargetFrameworkVersion = 4.6
#pragma warning disable 1591    //  Ignore "Missing XML Comment" warning


namespace CGH.QuikRide.Repository.Entities.QR
{

    // ReservationRequestStatusType
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class ReservationRequestStatusType
    {
        public int ReservationRequestStatusTypeId { get; set; } // ReservationRequestStatusTypeId (Primary key)
        public int LanguageTypeId { get; set; } // LanguageTypeId
        public string Code { get; set; } // Code (length: 50)
        public string DisplayText { get; set; } // DisplayText (length: 128)
        public int DisplayPriority { get; set; } // DisplayPriority
        public string Description { get; set; } // Description (length: 1024)
        public int DataVersion { get; set; } // DataVersion
        public System.DateTime CreatedUtcDate { get; set; } // CreatedUtcDate
        public string CreatedBy { get; set; } // CreatedBy (length: 200)
        public System.DateTime ModifiedUtcDate { get; set; } // ModifiedUtcDate
        public string ModifiedBy { get; set; } // ModifiedBy (length: 200)
        public bool IsDeleted { get; set; } // IsDeleted

        // Reverse navigation

        /// <summary>
        /// Child ReservationRequests where [ReservationRequest].[ReservationRequestStatusTypeId] point to this entity (FK_ReservationRequest_ReservationRequestStatusType)
        /// </summary>
        public System.Collections.Generic.ICollection<ReservationRequest> ReservationRequests { get; set; } // ReservationRequest.FK_ReservationRequest_ReservationRequestStatusType

        // Foreign keys

        /// <summary>
        /// Parent LanguageType pointed by [ReservationRequestStatusType].([LanguageTypeId]) (FK_ReservationRequestStatusType_LanguageType)
        /// </summary>
        public LanguageType LanguageType { get; set; } // FK_ReservationRequestStatusType_LanguageType

        public ReservationRequestStatusType()
        {
            DisplayPriority = 100;
            DataVersion = 1;
            CreatedUtcDate = System.DateTime.UtcNow;
            ModifiedUtcDate = System.DateTime.UtcNow;
            IsDeleted = false;
            ReservationRequests = new System.Collections.Generic.List<ReservationRequest>();
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>
