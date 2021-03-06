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

    // GenderTypeTranslation
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class GenderTypeTranslation
    {
        public int GenderTypeTranslationId { get; set; } // GenderTypeTranslationId (Primary key)
        public int GenderTypeId { get; set; } // GenderTypeId
        public int LanguageTypeId { get; set; } // LanguageTypeId
        public string Value { get; set; } // Value (length: 4000)
        public int DisplayPriority { get; set; } // DisplayPriority
        public string Description { get; set; } // Description (length: 1024)
        public int DataVersion { get; set; } // DataVersion
        public System.DateTime CreatedUtcDate { get; set; } // CreatedUtcDate
        public string CreatedBy { get; set; } // CreatedBy (length: 200)
        public System.DateTime ModifiedUtcDate { get; set; } // ModifiedUtcDate
        public string ModifiedBy { get; set; } // ModifiedBy (length: 200)
        public bool IsDeleted { get; set; } // IsDeleted

        // Foreign keys

        /// <summary>
        /// Parent GenderType pointed by [GenderTypeTranslation].([GenderTypeId]) (FK_GenderTypeTranslation_GenderType)
        /// </summary>
        public GenderType GenderType { get; set; } // FK_GenderTypeTranslation_GenderType

        /// <summary>
        /// Parent LanguageType pointed by [GenderTypeTranslation].([LanguageTypeId]) (FK_GenderTypeTranslation_LanguageType)
        /// </summary>
        public LanguageType LanguageType { get; set; } // FK_GenderTypeTranslation_LanguageType

        public GenderTypeTranslation()
        {
            DisplayPriority = 100;
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
