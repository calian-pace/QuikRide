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

    // Ride
    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class RideConfiguration : System.Data.Entity.ModelConfiguration.EntityTypeConfiguration<Ride>
    {
        public RideConfiguration()
            : this("dbo")
        {
        }

        public RideConfiguration(string schema)
        {
            ToTable("Ride", schema);
            HasKey(x => x.RideId);

            Property(x => x.RideId).HasColumnName(@"RideId").HasColumnType("uniqueidentifier").IsRequired().HasDatabaseGeneratedOption(System.ComponentModel.DataAnnotations.Schema.DatabaseGeneratedOption.None);
            Property(x => x.Start).HasColumnName(@"Start").HasColumnType("datetime2").IsOptional();
            Property(x => x.StartLatitude).HasColumnName(@"StartLatitude").HasColumnType("float").IsOptional();
            Property(x => x.StartLongitude).HasColumnName(@"StartLongitude").HasColumnType("float").IsOptional();
            Property(x => x.End).HasColumnName(@"End").HasColumnType("datetime2").IsOptional();
            Property(x => x.EndLatitude).HasColumnName(@"EndLatitude").HasColumnType("float").IsOptional();
            Property(x => x.EndLongitude).HasColumnName(@"EndLongitude").HasColumnType("float").IsOptional();
            Property(x => x.VehicleId).HasColumnName(@"VehicleId").HasColumnType("int").IsRequired();
            Property(x => x.DriverId).HasColumnName(@"DriverId").HasColumnType("int").IsRequired();
            Property(x => x.UserId).HasColumnName(@"UserId").HasColumnType("int").IsRequired();
            Property(x => x.DurationInSeconds).HasColumnName(@"DurationInSeconds").HasColumnType("int").IsOptional();
            Property(x => x.GeoDistance).HasColumnName(@"GeoDistance").HasColumnType("int").IsOptional();
            Property(x => x.DataVersion).HasColumnName(@"DataVersion").HasColumnType("int").IsRequired();
            Property(x => x.CreatedUtcDate).HasColumnName(@"CreatedUtcDate").HasColumnType("datetime2").IsRequired();
            Property(x => x.CreatedBy).HasColumnName(@"CreatedBy").HasColumnType("nvarchar").IsRequired().HasMaxLength(200);
            Property(x => x.ModifiedUtcDate).HasColumnName(@"ModifiedUtcDate").HasColumnType("datetime2").IsRequired();
            Property(x => x.ModifiedBy).HasColumnName(@"ModifiedBy").HasColumnType("nvarchar").IsRequired().HasMaxLength(200);
            Property(x => x.IsDeleted).HasColumnName(@"IsDeleted").HasColumnType("bit").IsRequired();

            // Foreign keys
            HasRequired(a => a.Driver).WithMany(b => b.Rides).HasForeignKey(c => c.DriverId).WillCascadeOnDelete(false); // FK_Ride_Driver
            HasRequired(a => a.User).WithMany(b => b.Rides).HasForeignKey(c => c.UserId).WillCascadeOnDelete(false); // FK_Ride_Users
            HasRequired(a => a.Vehicle).WithMany(b => b.Rides).HasForeignKey(c => c.VehicleId).WillCascadeOnDelete(false); // FK_Ride_Vehicle
            InitializePartial();
        }
        partial void InitializePartial();
    }

}
// </auto-generated>
