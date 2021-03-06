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

    // VehicleFeatureType
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class VehicleFeatureType
    {
        public int VehicleFeatureTypeId { get; set; } // VehicleFeatureTypeId (Primary key)
        public string Code { get; set; } // Code (length: 50)
        public int DataVersion { get; set; } // DataVersion
        public System.DateTime CreatedUtcDate { get; set; } // CreatedUtcDate
        public string CreatedBy { get; set; } // CreatedBy (length: 200)
        public System.DateTime ModifiedUtcDate { get; set; } // ModifiedUtcDate
        public string ModifiedBy { get; set; } // ModifiedBy (length: 200)
        public bool IsDeleted { get; set; } // IsDeleted

        // Reverse navigation

        /// <summary>
        /// Child VehicleFeatureTypeTranslations where [VehicleFeatureTypeTranslation].[VehicleFeatureTypeId] point to this entity (FK_VehicleFeatureTypeTranslation_VehicleFeatureType)
        /// </summary>
        public System.Collections.Generic.ICollection<VehicleFeatureTypeTranslation> VehicleFeatureTypeTranslations { get; set; } // VehicleFeatureTypeTranslation.FK_VehicleFeatureTypeTranslation_VehicleFeatureType
        /// <summary>
        /// Child VehicleTypeVehicleFeatureTypes where [VehicleType_VehicleFeatureType].[VehicleFeatureTypeId] point to this entity (FK_VehicleType_VehicleFeatureType_VehicleFeatureType)
        /// </summary>
        public System.Collections.Generic.ICollection<VehicleTypeVehicleFeatureType> VehicleTypeVehicleFeatureTypes { get; set; } // VehicleType_VehicleFeatureType.FK_VehicleType_VehicleFeatureType_VehicleFeatureType
        /// <summary>
        /// Child VehicleVehicleFeatureTypes where [Vehicle_VehicleFeatureType].[VehicleFeatureTypeId] point to this entity (FK_Vehicle_VehicleFeatureType_VehicleFeatureType)
        /// </summary>
        public System.Collections.Generic.ICollection<VehicleVehicleFeatureType> VehicleVehicleFeatureTypes { get; set; } // Vehicle_VehicleFeatureType.FK_Vehicle_VehicleFeatureType_VehicleFeatureType

        public VehicleFeatureType()
        {
            DataVersion = 1;
            CreatedUtcDate = System.DateTime.UtcNow;
            ModifiedUtcDate = System.DateTime.UtcNow;
            IsDeleted = false;
            VehicleVehicleFeatureTypes = new System.Collections.Generic.List<VehicleVehicleFeatureType>();
            VehicleFeatureTypeTranslations = new System.Collections.Generic.List<VehicleFeatureTypeTranslation>();
            VehicleTypeVehicleFeatureTypes = new System.Collections.Generic.List<VehicleTypeVehicleFeatureType>();
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>
