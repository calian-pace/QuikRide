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

    // Barcode
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class Barcode
    {
        public System.Guid BarcodeId { get; set; } // BarcodeId (Primary key)
        public int BarcodeTypeId { get; set; } // BarcodeTypeId
        public string DataJson { get; set; } // DataJson (length: 4000)
        public int DataVersion { get; set; } // DataVersion
        public System.DateTime CreatedUtcDate { get; set; } // CreatedUtcDate
        public string CreatedBy { get; set; } // CreatedBy (length: 200)
        public System.DateTime ModifiedUtcDate { get; set; } // ModifiedUtcDate
        public string ModifiedBy { get; set; } // ModifiedBy (length: 200)
        public bool IsDeleted { get; set; } // IsDeleted

        // Reverse navigation

        /// <summary>
        /// Child BarcodeScanLogs where [BarcodeScanLog].[BarcodeId] point to this entity (FK_BarcodeScanLog_Barcode)
        /// </summary>
        public System.Collections.Generic.ICollection<BarcodeScanLog> BarcodeScanLogs { get; set; } // BarcodeScanLog.FK_BarcodeScanLog_Barcode

        // Foreign keys

        /// <summary>
        /// Parent BarcodeType pointed by [Barcode].([BarcodeTypeId]) (FK_Barcode_BarcodeType)
        /// </summary>
        public BarcodeType BarcodeType { get; set; } // FK_Barcode_BarcodeType

        public Barcode()
        {
            DataVersion = 1;
            CreatedUtcDate = System.DateTime.UtcNow;
            ModifiedUtcDate = System.DateTime.UtcNow;
            IsDeleted = false;
            BarcodeScanLogs = new System.Collections.Generic.List<BarcodeScanLog>();
            InitializePartial();
        }

        partial void InitializePartial();
    }

}
// </auto-generated>