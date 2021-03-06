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

    // ReservationRequestOption
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class ReservationRequestOptionConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<ReservationRequestOption>
    {
        public ReservationRequestOptionConfiguration()
            : this("dbo")
        {
        }

        public ReservationRequestOptionConfiguration(string schema)
        {
            ToTable("ReservationRequestOption", schema);
            HasKey(x => x.ReservationRequestOptionId);

            Property(x => x.ReservationRequestOptionId).HasColumnName(@"ReservationRequestOptionId").HasColumnType("int").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.ReservationRequestId).HasColumnName(@"ReservationRequestId").HasColumnType("uniqueidentifier").IsRequired();
            Property(x => x.SuggestedPickupStart).HasColumnName(@"SuggestedPickupStart").HasColumnType("datetime2").IsRequired();
            Property(x => x.SuggestedPickupEnd).HasColumnName(@"SuggestedPickupEnd").HasColumnType("datetime2").IsRequired();
            Property(x => x.EstimatedArrivalStart).HasColumnName(@"EstimatedArrivalStart").HasColumnType("datetime2").IsRequired();
            Property(x => x.EstimatedArrivalEnd).HasColumnName(@"EstimatedArrivalEnd").HasColumnType("datetime2").IsRequired();
            Property(x => x.Score).HasColumnName(@"Score").HasColumnType("int").IsRequired();
            Property(x => x.DataVersion).HasColumnName(@"DataVersion").HasColumnType("int").IsRequired();
            Property(x => x.CreatedUtcDate).HasColumnName(@"CreatedUtcDate").HasColumnType("datetime2").IsRequired();
            Property(x => x.CreatedBy).HasColumnName(@"CreatedBy").HasColumnType("nvarchar").IsRequired().HasMaxLength(200);
            Property(x => x.ModifiedUtcDate).HasColumnName(@"ModifiedUtcDate").HasColumnType("datetime2").IsRequired();
            Property(x => x.ModifiedBy).HasColumnName(@"ModifiedBy").HasColumnType("nvarchar").IsRequired().HasMaxLength(200);
            Property(x => x.IsDeleted).HasColumnName(@"IsDeleted").HasColumnType("bit").IsRequired();
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
