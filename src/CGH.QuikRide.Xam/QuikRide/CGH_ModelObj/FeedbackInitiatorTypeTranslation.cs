// <auto-generated> - Template:MvvmLightModelObject, Version:1.1, Id:c644a31c-7ebc-4383-bc7f-0ea7c5bf6ed4
using GalaSoft.MvvmLight;

namespace CGH.QuikRide.Xam.ModelObj.QR
{
	public partial class FeedbackInitiatorTypeTranslation : ObservableObject
	{
		public FeedbackInitiatorTypeTranslation()
		{
			InitializePartial();
		}

		private string _createdBy;
		private System.DateTime _createdUtcDate;
		private int _dataVersion;
		private int _displayPriority;
		private int _feedbackInitiatorTypeId;
		private int _feedbackInitiatorTypeTranslationId;
		private bool _isDeleted;
		private int _languageTypeId;
		private string _modifiedBy;
		private System.DateTime _modifiedUtcDate;
		private string _value;


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

		public int DisplayPriority
		{
			get { return _displayPriority; }
			set
			{
				Set<int>(() => DisplayPriority, ref _displayPriority, value);
				RunCustomLogicSetDisplayPriority(value);
			}
		}

		public int FeedbackInitiatorTypeId
		{
			get { return _feedbackInitiatorTypeId; }
			set
			{
				Set<int>(() => FeedbackInitiatorTypeId, ref _feedbackInitiatorTypeId, value);
				RunCustomLogicSetFeedbackInitiatorTypeId(value);
			}
		}

		public int FeedbackInitiatorTypeTranslationId
		{
			get { return _feedbackInitiatorTypeTranslationId; }
			set
			{
				Set<int>(() => FeedbackInitiatorTypeTranslationId, ref _feedbackInitiatorTypeTranslationId, value);
				RunCustomLogicSetFeedbackInitiatorTypeTranslationId(value);
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

		public int LanguageTypeId
		{
			get { return _languageTypeId; }
			set
			{
				Set<int>(() => LanguageTypeId, ref _languageTypeId, value);
				RunCustomLogicSetLanguageTypeId(value);
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

		public string Value
		{
			get { return _value; }
			set
			{
				Set<string>(() => Value, ref _value, value);
				RunCustomLogicSetValue(value);
			}
		}

		public virtual FeedbackInitiatorType FeedbackInitiatorType { get; set; } 
		public virtual LanguageType LanguageType { get; set; } 


		partial void InitializePartial();

		#region RunCustomLogicSet

		partial void RunCustomLogicSetCreatedBy(string value);
		partial void RunCustomLogicSetCreatedUtcDate(System.DateTime value);
		partial void RunCustomLogicSetDataVersion(int value);
		partial void RunCustomLogicSetDisplayPriority(int value);
		partial void RunCustomLogicSetFeedbackInitiatorTypeId(int value);
		partial void RunCustomLogicSetFeedbackInitiatorTypeTranslationId(int value);
		partial void RunCustomLogicSetIsDeleted(bool value);
		partial void RunCustomLogicSetLanguageTypeId(int value);
		partial void RunCustomLogicSetModifiedBy(string value);
		partial void RunCustomLogicSetModifiedUtcDate(System.DateTime value);
		partial void RunCustomLogicSetValue(string value);

		#endregion RunCustomLogicSet

	}
}
