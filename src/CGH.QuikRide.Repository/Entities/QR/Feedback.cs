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

    // Feedback
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class Feedback
    {
        public System.Guid FeedbackId { get; set; } // FeedbackId (Primary key)
        public string Title { get; set; } // Title (length: 1024)
        public string Description { get; set; } // Description (length: 2048)
        public int FeedbackTypeId { get; set; } // FeedbackTypeId
        public int FeedbackInitiatorTypeId { get; set; } // FeedbackInitiatorTypeId
        public string Source { get; set; } // Source (length: 50)
        public double Latitude { get; set; } // Latitude
        public double Longitude { get; set; } // Longitude
        public bool Dispositioned { get; set; } // Dispositioned
        public int? UserId { get; set; } // UserId
        public int? DriverId { get; set; } // DriverId
        public int? VehicleId { get; set; } // VehicleId
        public int DataVersion { get; set; } // DataVersion
        public System.DateTime CreatedUtcDate { get; set; } // CreatedUtcDate
        public string CreatedBy { get; set; } // CreatedBy (length: 200)
        public System.DateTime ModifiedUtcDate { get; set; } // ModifiedUtcDate
        public string ModifiedBy { get; set; } // ModifiedBy (length: 200)
        public bool IsDeleted { get; set; } // IsDeleted

        // Foreign keys

        /// <summary>
        /// Parent FeedbackInitiatorType pointed by [Feedback].([FeedbackInitiatorTypeId]) (FK_Feedback_FeedbackInitiatorType)
        /// </summary>
        public FeedbackInitiatorType FeedbackInitiatorType { get; set; } // FK_Feedback_FeedbackInitiatorType

        /// <summary>
        /// Parent FeedbackType pointed by [Feedback].([FeedbackTypeId]) (FK_Feedback_FeedbackType)
        /// </summary>
        public FeedbackType FeedbackType { get; set; } // FK_Feedback_FeedbackType

        public Feedback()
        {
            DataVersion = 1;
            CreatedUtcDate = System.DateTime.UtcNow;
            ModifiedUtcDate = System.DateTime.UtcNow;
            IsDeleted = false;
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>
