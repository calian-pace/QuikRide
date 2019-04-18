// <auto-generated> - Template:MvvmLightModelObject, Version:1.1, Id:c644a31c-7ebc-4383-bc7f-0ea7c5bf6ed4
using GalaSoft.MvvmLight;

namespace CGH.QuikRide.Xam.ModelObj.QR
{
	public partial class BusRouteStop : ObservableObject
	{
		public BusRouteStop()
		{
			InitializePartial();
		}

		private int _busRouteId;
		private int _busRouteStopId;
		private string _createdBy;
		private System.DateTime _createdUtcDate;
		private int _dataVersion;
		private bool _isDeleted;
		private bool _isMajorStop;
		private bool _isPublishedStop;
		private System.Guid _locationId;
		private string _modifiedBy;
		private System.DateTime _modifiedUtcDate;


		public int BusRouteId
		{
			get { return _busRouteId; }
			set
			{
				Set<int>(() => BusRouteId, ref _busRouteId, value);
				RunCustomLogicSetBusRouteId(value);
			}
		}

		public int BusRouteStopId
		{
			get { return _busRouteStopId; }
			set
			{
				Set<int>(() => BusRouteStopId, ref _busRouteStopId, value);
				RunCustomLogicSetBusRouteStopId(value);
			}
		}

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

		public int DataVersion
		{
			get { return _dataVersion; }
			set
			{
				Set<int>(() => DataVersion, ref _dataVersion, value);
				RunCustomLogicSetDataVersion(value);
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

		public bool IsMajorStop
		{
			get { return _isMajorStop; }
			set
			{
				Set<bool>(() => IsMajorStop, ref _isMajorStop, value);
				RunCustomLogicSetIsMajorStop(value);
			}
		}

		public bool IsPublishedStop
		{
			get { return _isPublishedStop; }
			set
			{
				Set<bool>(() => IsPublishedStop, ref _isPublishedStop, value);
				RunCustomLogicSetIsPublishedStop(value);
			}
		}

		public System.Guid LocationId
		{
			get { return _locationId; }
			set
			{
				Set<System.Guid>(() => LocationId, ref _locationId, value);
				RunCustomLogicSetLocationId(value);
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

		public virtual BusRoute BusRoute { get; set; } 
		public virtual Location Location { get; set; } 


		partial void InitializePartial();

		#region RunCustomLogicSet

		partial void RunCustomLogicSetBusRouteId(int value);
		partial void RunCustomLogicSetBusRouteStopId(int value);
		partial void RunCustomLogicSetCreatedBy(string value);
		partial void RunCustomLogicSetCreatedUtcDate(System.DateTime value);
		partial void RunCustomLogicSetDataVersion(int value);
		partial void RunCustomLogicSetIsDeleted(bool value);
		partial void RunCustomLogicSetIsMajorStop(bool value);
		partial void RunCustomLogicSetIsPublishedStop(bool value);
		partial void RunCustomLogicSetLocationId(System.Guid value);
		partial void RunCustomLogicSetModifiedBy(string value);
		partial void RunCustomLogicSetModifiedUtcDate(System.DateTime value);

		#endregion RunCustomLogicSet

	}
}