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

    // Vehicle_VehicleFeatureType
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class VehicleVehicleFeatureTypeConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<VehicleVehicleFeatureType>
    {
        public VehicleVehicleFeatureTypeConfiguration()
            : this("dbo")
        {
        }

        public VehicleVehicleFeatureTypeConfiguration(string schema)
        {
            ToTable("Vehicle_VehicleFeatureType", schema);
            HasKey(x => new { x.VehicleId, x.VehicleFeatureTypeId });

            Property(x => x.VehicleId).HasColumnName(@"VehicleId").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.VehicleFeatureTypeId).HasColumnName(@"VehicleFeatureTypeId").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.DataVersion).HasColumnName(@"DataVersion").HasColumnType("int").IsRequired();
            Property(x => x.CreatedUtcDate).HasColumnName(@"CreatedUtcDate").HasColumnType("datetime2").IsRequired();
            Property(x => x.CreatedBy).HasColumnName(@"CreatedBy").HasColumnType("nvarchar").IsRequired().HasMaxLength(200);
            Property(x => x.ModifiedUtcDate).HasColumnName(@"ModifiedUtcDate").HasColumnType("datetime2").IsRequired();
            Property(x => x.ModifiedBy).HasColumnName(@"ModifiedBy").HasColumnType("nvarchar").IsRequired().HasMaxLength(200);
            Property(x => x.IsDeleted).HasColumnName(@"IsDeleted").HasColumnType("bit").IsRequired();

            // Foreign keys
            HasRequired(a => a.Vehicle).WithMany(b => b.VehicleVehicleFeatureTypes).HasForeignKey(c => c.VehicleId).WillCascadeOnDelete(false); // FK_Vehicle_VehicleFeatureType_Vehicle
            HasRequired(a => a.VehicleFeatureType).WithMany(b => b.VehicleVehicleFeatureTypes).HasForeignKey(c => c.VehicleFeatureTypeId).WillCascadeOnDelete(false); // FK_Vehicle_VehicleFeatureType_VehicleFeatureType
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
