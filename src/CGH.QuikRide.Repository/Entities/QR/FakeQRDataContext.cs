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

    using System.Linq;

    [System.CodeDom.Compiler.GeneratedCode("EF.Reverse.POCO.Generator", "2.33.0.0")]
    public partial class FakeQRDataContext : IQRDataContext
    {
        public System.Data.Entity.DbSet<Driver> Drivers { get; set; }
        public System.Data.Entity.DbSet<Feedback> Feedbacks { get; set; }
        public System.Data.Entity.DbSet<FeedbackType> FeedbackTypes { get; set; }
        public System.Data.Entity.DbSet<GenderType> GenderTypes { get; set; }
        public System.Data.Entity.DbSet<Holiday> Holidays { get; set; }
        public System.Data.Entity.DbSet<LanguageType> LanguageTypes { get; set; }
        public System.Data.Entity.DbSet<Location> Locations { get; set; }
        public System.Data.Entity.DbSet<NotificationType> NotificationTypes { get; set; }
        public System.Data.Entity.DbSet<Reservation> Reservations { get; set; }
        public System.Data.Entity.DbSet<ReservationCancellationReasonType> ReservationCancellationReasonTypes { get; set; }
        public System.Data.Entity.DbSet<ReservationRequest> ReservationRequests { get; set; }
        public System.Data.Entity.DbSet<ReservationRequestCancellationReasonType> ReservationRequestCancellationReasonTypes { get; set; }
        public System.Data.Entity.DbSet<ReservationRequestOption> ReservationRequestOptions { get; set; }
        public System.Data.Entity.DbSet<ReservationRequestStatusType> ReservationRequestStatusTypes { get; set; }
        public System.Data.Entity.DbSet<ReservationStatusType> ReservationStatusTypes { get; set; }
        public System.Data.Entity.DbSet<Ride> Rides { get; set; }
        public System.Data.Entity.DbSet<RidePosition> RidePositions { get; set; }
        public System.Data.Entity.DbSet<RideServiceType> RideServiceTypes { get; set; }
        public System.Data.Entity.DbSet<User> Users { get; set; }
        public System.Data.Entity.DbSet<UsersLocation> UsersLocations { get; set; }
        public System.Data.Entity.DbSet<UsersNotificationType> UsersNotificationTypes { get; set; }
        public System.Data.Entity.DbSet<Vehicle> Vehicles { get; set; }
        public System.Data.Entity.DbSet<VehicleFeatureType> VehicleFeatureTypes { get; set; }
        public System.Data.Entity.DbSet<VehicleStatusType> VehicleStatusTypes { get; set; }
        public System.Data.Entity.DbSet<VehicleType> VehicleTypes { get; set; }
        public System.Data.Entity.DbSet<VehicleTypeVehicleFeatureType> VehicleTypeVehicleFeatureTypes { get; set; }
        public System.Data.Entity.DbSet<VehicleVehicleFeatureType> VehicleVehicleFeatureTypes { get; set; }

        public FakeQRDataContext()
        {
            Drivers = new FakeDbSet<Driver>("DriverId");
            Feedbacks = new FakeDbSet<Feedback>("FeedbackId");
            FeedbackTypes = new FakeDbSet<FeedbackType>("FeedbackTypeId");
            GenderTypes = new FakeDbSet<GenderType>("GenderTypeId");
            Holidays = new FakeDbSet<Holiday>("HolidayId");
            LanguageTypes = new FakeDbSet<LanguageType>("LanguageTypeId");
            Locations = new FakeDbSet<Location>("LocationId");
            NotificationTypes = new FakeDbSet<NotificationType>("NotificationTypeId");
            Reservations = new FakeDbSet<Reservation>("ReservationId");
            ReservationCancellationReasonTypes = new FakeDbSet<ReservationCancellationReasonType>("ReservationCancellationReasonTypeId");
            ReservationRequests = new FakeDbSet<ReservationRequest>("ReservationRequestId");
            ReservationRequestCancellationReasonTypes = new FakeDbSet<ReservationRequestCancellationReasonType>("ReservationRequestCancellationReasonTypeId");
            ReservationRequestOptions = new FakeDbSet<ReservationRequestOption>("ReservationRequestOptionId");
            ReservationRequestStatusTypes = new FakeDbSet<ReservationRequestStatusType>("ReservationRequestStatusTypeId");
            ReservationStatusTypes = new FakeDbSet<ReservationStatusType>("ReservationStatusTypeId");
            Rides = new FakeDbSet<Ride>("RideId");
            RidePositions = new FakeDbSet<RidePosition>("RidePositionId");
            RideServiceTypes = new FakeDbSet<RideServiceType>("RideServiceTypeId");
            Users = new FakeDbSet<User>("UserId");
            UsersLocations = new FakeDbSet<UsersLocation>("UserId", "LocationId");
            UsersNotificationTypes = new FakeDbSet<UsersNotificationType>("UserId", "NotificationTypeId");
            Vehicles = new FakeDbSet<Vehicle>("VehicleId");
            VehicleFeatureTypes = new FakeDbSet<VehicleFeatureType>("VehicleFeatureTypeId");
            VehicleStatusTypes = new FakeDbSet<VehicleStatusType>("VehicleStatusTypeId");
            VehicleTypes = new FakeDbSet<VehicleType>("VehicleTypeId");
            VehicleTypeVehicleFeatureTypes = new FakeDbSet<VehicleTypeVehicleFeatureType>("VehicleTypeId", "VehicleFeatureTypeId");
            VehicleVehicleFeatureTypes = new FakeDbSet<VehicleVehicleFeatureType>("VehicleId", "VehicleFeatureTypeId");

            InitializePartial();
        }

        public int SaveChangesCount { get; private set; }
        public int SaveChanges()
        {
            ++SaveChangesCount;
            return 1;
        }

        public System.Threading.Tasks.Task<int> SaveChangesAsync()
        {
            ++SaveChangesCount;
            return System.Threading.Tasks.Task<int>.Factory.StartNew(() => 1);
        }

        public System.Threading.Tasks.Task<int> SaveChangesAsync(System.Threading.CancellationToken cancellationToken)
        {
            ++SaveChangesCount;
            return System.Threading.Tasks.Task<int>.Factory.StartNew(() => 1, cancellationToken);
        }

        partial void InitializePartial();

        protected virtual void Dispose(bool disposing)
        {
        }

        public void Dispose()
        {
            Dispose(true);
        }

        private System.Data.Entity.Infrastructure.DbChangeTracker _changeTracker;
        public System.Data.Entity.Infrastructure.DbChangeTracker ChangeTracker { get { return _changeTracker; } }
        private System.Data.Entity.Infrastructure.DbContextConfiguration _configuration;
        public System.Data.Entity.Infrastructure.DbContextConfiguration Configuration { get { return _configuration; } }
        private System.Data.Entity.Database _database;
        public System.Data.Entity.Database Database { get { return _database; } }
        public System.Data.Entity.Infrastructure.DbEntityEntry<TEntity> Entry<TEntity>(TEntity entity) where TEntity : class
        {
            throw new System.NotImplementedException();
        }
        public System.Data.Entity.Infrastructure.DbEntityEntry Entry(object entity)
        {
            throw new System.NotImplementedException();
        }
        public System.Collections.Generic.IEnumerable<System.Data.Entity.Validation.DbEntityValidationResult> GetValidationErrors()
        {
            throw new System.NotImplementedException();
        }
        public System.Data.Entity.DbSet Set(System.Type entityType)
        {
            throw new System.NotImplementedException();
        }
        public System.Data.Entity.DbSet<TEntity> Set<TEntity>() where TEntity : class
        {
            throw new System.NotImplementedException();
        }
        public override string ToString()
        {
            throw new System.NotImplementedException();
        }

    }
}
// </auto-generated>