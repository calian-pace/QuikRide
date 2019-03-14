// <auto-generated> - Template:MvvmLightModelObject, Version:1.1, Id:c644a31c-7ebc-4383-bc7f-0ea7c5bf6ed4
using GalaSoft.MvvmLight;

namespace CGH.QuikRide.Xam.ModelObj.QR
{
	public partial class Driver : ObservableObject
	{
		public Driver()
		{
			Rides = new System.Collections.Generic.List<Ride>(); // Reverse Navigation

			InitializePartial();
		}

		private string _createdBy;
		private System.DateTime _createdUtcDate;
		private int? _currentVehicleId;
		private int _dataVersion;
		private int _driverId;
		private bool _isDeleted;
		private double? _latitude;
		private double? _longitude;
		private string _modifiedBy;
		private System.DateTime _modifiedUtcDate;
		private int _userId;


		public string CreatedBy
		{
			get { return _createdBy; }
			set
			{
				Set<string>(() => CreatedBy, ref _createdBy, value);
				RunCustomLogicSetCreatedBy(value);
			}
		}

		public System.DateTime CreatedUtcDate
		{
			get { return _createdUtcDate; }
			set
			{
				Set<System.DateTime>(() => CreatedUtcDate, ref _createdUtcDate, value);
				RunCustomLogicSetCreatedUtcDate(value);
			}
		}

		public int? CurrentVehicleId
		{
			get { return _currentVehicleId; }
			set
			{
				Set<int?>(() => CurrentVehicleId, ref _currentVehicleId, value);
				RunCustomLogicSetCurrentVehicleId(value);
			}
		}

		public int DataVersion
		{
			get { return _dataVersion; }
			set
			{
				Set<int>(() => DataVersion, ref _dataVersion, value);
				RunCustomLogicSetDataVersion(value);
			}
		}

		public int DriverId
		{
			get { return _driverId; }
			set
			{
				Set<int>(() => DriverId, ref _driverId, value);
				RunCustomLogicSetDriverId(value);
			}
		}

		public bool IsDeleted
		{
			get { return _isDeleted; }
			set
			{
				Set<bool>(() => IsDeleted, ref _isDeleted, value);
				RunCustomLogicSetIsDeleted(value);
			}
		}

		public double? Latitude
		{
			get { return _latitude; }
			set
			{
				Set<double?>(() => Latitude, ref _latitude, value);
				RunCustomLogicSetLatitude(value);
			}
		}

		public double? Longitude
		{
			get { return _longitude; }
			set
			{
				Set<double?>(() => Longitude, ref _longitude, value);
				RunCustomLogicSetLongitude(value);
			}
		}

		public string ModifiedBy
		{
			get { return _modifiedBy; }
			set
			{
				Set<string>(() => ModifiedBy, ref _modifiedBy, value);
				RunCustomLogicSetModifiedBy(value);
			}
		}

		public System.DateTime ModifiedUtcDate
		{
			get { return _modifiedUtcDate; }
			set
			{
				Set<System.DateTime>(() => ModifiedUtcDate, ref _modifiedUtcDate, value);
				RunCustomLogicSetModifiedUtcDate(value);
			}
		}

		public int UserId
		{
			get { return _userId; }
			set
			{
				Set<int>(() => UserId, ref _userId, value);
				RunCustomLogicSetUserId(value);
			}
		}

		public virtual System.Collections.Generic.IList<Ride> Rides { get; set; } // Many to many mapping
		public virtual User User { get; set; } 
		public virtual Vehicle Vehicle { get; set; } 


		partial void InitializePartial();

		#region RunCustomLogicSet

		partial void RunCustomLogicSetCreatedBy(string value);
		partial void RunCustomLogicSetCreatedUtcDate(System.DateTime value);
		partial void RunCustomLogicSetCurrentVehicleId(int? value);
		partial void RunCustomLogicSetDataVersion(int value);
		partial void RunCustomLogicSetDriverId(int value);
		partial void RunCustomLogicSetIsDeleted(bool value);
		partial void RunCustomLogicSetLatitude(double? value);
		partial void RunCustomLogicSetLongitude(double? value);
		partial void RunCustomLogicSetModifiedBy(string value);
		partial void RunCustomLogicSetModifiedUtcDate(System.DateTime value);
		partial void RunCustomLogicSetUserId(int value);

		#endregion RunCustomLogicSet

	}
}
