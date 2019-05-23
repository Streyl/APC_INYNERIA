﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="DB")]
public partial class LinqDataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void Insertproject(project instance);
  partial void Updateproject(project instance);
  partial void Deleteproject(project instance);
  partial void Insertuser(user instance);
  partial void Updateuser(user instance);
  partial void Deleteuser(user instance);
  partial void Inserttask(task instance);
  partial void Updatetask(task instance);
  partial void Deletetask(task instance);
  partial void InserttaskAssignment(taskAssignment instance);
  partial void UpdatetaskAssignment(taskAssignment instance);
  partial void DeletetaskAssignment(taskAssignment instance);
  #endregion
	
	public LinqDataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public LinqDataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public LinqDataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public LinqDataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public LinqDataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<project> projects
	{
		get
		{
			return this.GetTable<project>();
		}
	}
	
	public System.Data.Linq.Table<user> users
	{
		get
		{
			return this.GetTable<user>();
		}
	}
	
	public System.Data.Linq.Table<task> tasks
	{
		get
		{
			return this.GetTable<task>();
		}
	}
	
	public System.Data.Linq.Table<taskAssignment> taskAssignments
	{
		get
		{
			return this.GetTable<taskAssignment>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.project")]
public partial class project : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private string _name;
	
	private int _creatorID;
	
	private System.DateTime _creationDate;
	
	private System.DateTime _startDate;
	
	private System.DateTime _endDate;
	
	private string _status;
	
	private string _description;
	
	private string _remarks;
	
	private EntitySet<task> _tasks;
	
	private EntityRef<user> _user;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OncreatorIDChanging(int value);
    partial void OncreatorIDChanged();
    partial void OncreationDateChanging(System.DateTime value);
    partial void OncreationDateChanged();
    partial void OnstartDateChanging(System.DateTime value);
    partial void OnstartDateChanged();
    partial void OnendDateChanging(System.DateTime value);
    partial void OnendDateChanged();
    partial void OnstatusChanging(string value);
    partial void OnstatusChanged();
    partial void OndescriptionChanging(string value);
    partial void OndescriptionChanged();
    partial void OnremarksChanging(string value);
    partial void OnremarksChanged();
    #endregion
	
	public project()
	{
		this._tasks = new EntitySet<task>(new Action<task>(this.attach_tasks), new Action<task>(this.detach_tasks));
		this._user = default(EntityRef<user>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_creatorID", DbType="Int NOT NULL")]
	public int creatorID
	{
		get
		{
			return this._creatorID;
		}
		set
		{
			if ((this._creatorID != value))
			{
				if (this._user.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OncreatorIDChanging(value);
				this.SendPropertyChanging();
				this._creatorID = value;
				this.SendPropertyChanged("creatorID");
				this.OncreatorIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_creationDate", DbType="Date NOT NULL")]
	public System.DateTime creationDate
	{
		get
		{
			return this._creationDate;
		}
		set
		{
			if ((this._creationDate != value))
			{
				this.OncreationDateChanging(value);
				this.SendPropertyChanging();
				this._creationDate = value;
				this.SendPropertyChanged("creationDate");
				this.OncreationDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_startDate", DbType="Date NOT NULL")]
	public System.DateTime startDate
	{
		get
		{
			return this._startDate;
		}
		set
		{
			if ((this._startDate != value))
			{
				this.OnstartDateChanging(value);
				this.SendPropertyChanging();
				this._startDate = value;
				this.SendPropertyChanged("startDate");
				this.OnstartDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_endDate", DbType="Date NOT NULL")]
	public System.DateTime endDate
	{
		get
		{
			return this._endDate;
		}
		set
		{
			if ((this._endDate != value))
			{
				this.OnendDateChanging(value);
				this.SendPropertyChanging();
				this._endDate = value;
				this.SendPropertyChanged("endDate");
				this.OnendDateChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string status
	{
		get
		{
			return this._status;
		}
		set
		{
			if ((this._status != value))
			{
				this.OnstatusChanging(value);
				this.SendPropertyChanging();
				this._status = value;
				this.SendPropertyChanged("status");
				this.OnstatusChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_description", DbType="NVarChar(4000)")]
	public string description
	{
		get
		{
			return this._description;
		}
		set
		{
			if ((this._description != value))
			{
				this.OndescriptionChanging(value);
				this.SendPropertyChanging();
				this._description = value;
				this.SendPropertyChanged("description");
				this.OndescriptionChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_remarks", DbType="NVarChar(200)")]
	public string remarks
	{
		get
		{
			return this._remarks;
		}
		set
		{
			if ((this._remarks != value))
			{
				this.OnremarksChanging(value);
				this.SendPropertyChanging();
				this._remarks = value;
				this.SendPropertyChanged("remarks");
				this.OnremarksChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="project_task", Storage="_tasks", ThisKey="id", OtherKey="projectID")]
	public EntitySet<task> tasks
	{
		get
		{
			return this._tasks;
		}
		set
		{
			this._tasks.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="user_project", Storage="_user", ThisKey="creatorID", OtherKey="id", IsForeignKey=true)]
	public user user
	{
		get
		{
			return this._user.Entity;
		}
		set
		{
			user previousValue = this._user.Entity;
			if (((previousValue != value) 
						|| (this._user.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._user.Entity = null;
					previousValue.projects.Remove(this);
				}
				this._user.Entity = value;
				if ((value != null))
				{
					value.projects.Add(this);
					this._creatorID = value.id;
				}
				else
				{
					this._creatorID = default(int);
				}
				this.SendPropertyChanged("user");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_tasks(task entity)
	{
		this.SendPropertyChanging();
		entity.project = this;
	}
	
	private void detach_tasks(task entity)
	{
		this.SendPropertyChanging();
		entity.project = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[user]")]
public partial class user : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private string _name;
	
	private string _surname;
	
	private string _login;
	
	private string _password;
	
	private int _level;
	
	private int _accountStatus;
	
	private EntitySet<project> _projects;
	
	private EntitySet<task> _tasks;
	
	private EntitySet<taskAssignment> _taskAssignments;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnsurnameChanging(string value);
    partial void OnsurnameChanged();
    partial void OnloginChanging(string value);
    partial void OnloginChanged();
    partial void OnpasswordChanging(string value);
    partial void OnpasswordChanged();
    partial void OnlevelChanging(int value);
    partial void OnlevelChanged();
    partial void OnaccountStatusChanging(int value);
    partial void OnaccountStatusChanged();
    #endregion
	
	public user()
	{
		this._projects = new EntitySet<project>(new Action<project>(this.attach_projects), new Action<project>(this.detach_projects));
		this._tasks = new EntitySet<task>(new Action<task>(this.attach_tasks), new Action<task>(this.detach_tasks));
		this._taskAssignments = new EntitySet<taskAssignment>(new Action<taskAssignment>(this.attach_taskAssignments), new Action<taskAssignment>(this.detach_taskAssignments));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_surname", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string surname
	{
		get
		{
			return this._surname;
		}
		set
		{
			if ((this._surname != value))
			{
				this.OnsurnameChanging(value);
				this.SendPropertyChanging();
				this._surname = value;
				this.SendPropertyChanged("surname");
				this.OnsurnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_login", DbType="VarChar(16) NOT NULL", CanBeNull=false)]
	public string login
	{
		get
		{
			return this._login;
		}
		set
		{
			if ((this._login != value))
			{
				this.OnloginChanging(value);
				this.SendPropertyChanging();
				this._login = value;
				this.SendPropertyChanged("login");
				this.OnloginChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_password", DbType="VarChar(32) NOT NULL", CanBeNull=false)]
	public string password
	{
		get
		{
			return this._password;
		}
		set
		{
			if ((this._password != value))
			{
				this.OnpasswordChanging(value);
				this.SendPropertyChanging();
				this._password = value;
				this.SendPropertyChanged("password");
				this.OnpasswordChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Name="[level]", Storage="_level", DbType="Int NOT NULL")]
	public int level
	{
		get
		{
			return this._level;
		}
		set
		{
			if ((this._level != value))
			{
				this.OnlevelChanging(value);
				this.SendPropertyChanging();
				this._level = value;
				this.SendPropertyChanged("level");
				this.OnlevelChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_accountStatus", DbType="Int NOT NULL")]
	public int accountStatus
	{
		get
		{
			return this._accountStatus;
		}
		set
		{
			if ((this._accountStatus != value))
			{
				this.OnaccountStatusChanging(value);
				this.SendPropertyChanging();
				this._accountStatus = value;
				this.SendPropertyChanged("accountStatus");
				this.OnaccountStatusChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="user_project", Storage="_projects", ThisKey="id", OtherKey="creatorID")]
	public EntitySet<project> projects
	{
		get
		{
			return this._projects;
		}
		set
		{
			this._projects.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="user_task", Storage="_tasks", ThisKey="id", OtherKey="leaderID")]
	public EntitySet<task> tasks
	{
		get
		{
			return this._tasks;
		}
		set
		{
			this._tasks.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="user_taskAssignment", Storage="_taskAssignments", ThisKey="id", OtherKey="userID")]
	public EntitySet<taskAssignment> taskAssignments
	{
		get
		{
			return this._taskAssignments;
		}
		set
		{
			this._taskAssignments.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_projects(project entity)
	{
		this.SendPropertyChanging();
		entity.user = this;
	}
	
	private void detach_projects(project entity)
	{
		this.SendPropertyChanging();
		entity.user = null;
	}
	
	private void attach_tasks(task entity)
	{
		this.SendPropertyChanging();
		entity.user = this;
	}
	
	private void detach_tasks(task entity)
	{
		this.SendPropertyChanging();
		entity.user = null;
	}
	
	private void attach_taskAssignments(taskAssignment entity)
	{
		this.SendPropertyChanging();
		entity.user = this;
	}
	
	private void detach_taskAssignments(taskAssignment entity)
	{
		this.SendPropertyChanging();
		entity.user = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.task")]
public partial class task : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private System.Nullable<int> _parentID;
	
	private string _name;
	
	private int _leaderID;
	
	private string _status;
	
	private string _description;
	
	private int _projectID;
	
	private EntitySet<task> _tasks;
	
	private EntitySet<taskAssignment> _taskAssignments;
	
	private EntityRef<project> _project;
	
	private EntityRef<task> _task1;
	
	private EntityRef<user> _user;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnparentIDChanging(System.Nullable<int> value);
    partial void OnparentIDChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnleaderIDChanging(int value);
    partial void OnleaderIDChanged();
    partial void OnstatusChanging(string value);
    partial void OnstatusChanged();
    partial void OndescriptionChanging(string value);
    partial void OndescriptionChanged();
    partial void OnprojectIDChanging(int value);
    partial void OnprojectIDChanged();
    #endregion
	
	public task()
	{
		this._tasks = new EntitySet<task>(new Action<task>(this.attach_tasks), new Action<task>(this.detach_tasks));
		this._taskAssignments = new EntitySet<taskAssignment>(new Action<taskAssignment>(this.attach_taskAssignments), new Action<taskAssignment>(this.detach_taskAssignments));
		this._project = default(EntityRef<project>);
		this._task1 = default(EntityRef<task>);
		this._user = default(EntityRef<user>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_parentID", DbType="Int")]
	public System.Nullable<int> parentID
	{
		get
		{
			return this._parentID;
		}
		set
		{
			if ((this._parentID != value))
			{
				if (this._task1.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnparentIDChanging(value);
				this.SendPropertyChanging();
				this._parentID = value;
				this.SendPropertyChanged("parentID");
				this.OnparentIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string name
	{
		get
		{
			return this._name;
		}
		set
		{
			if ((this._name != value))
			{
				this.OnnameChanging(value);
				this.SendPropertyChanging();
				this._name = value;
				this.SendPropertyChanged("name");
				this.OnnameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_leaderID", DbType="Int NOT NULL")]
	public int leaderID
	{
		get
		{
			return this._leaderID;
		}
		set
		{
			if ((this._leaderID != value))
			{
				if (this._user.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnleaderIDChanging(value);
				this.SendPropertyChanging();
				this._leaderID = value;
				this.SendPropertyChanged("leaderID");
				this.OnleaderIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
	public string status
	{
		get
		{
			return this._status;
		}
		set
		{
			if ((this._status != value))
			{
				this.OnstatusChanging(value);
				this.SendPropertyChanging();
				this._status = value;
				this.SendPropertyChanged("status");
				this.OnstatusChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_description", DbType="NVarChar(200)")]
	public string description
	{
		get
		{
			return this._description;
		}
		set
		{
			if ((this._description != value))
			{
				this.OndescriptionChanging(value);
				this.SendPropertyChanging();
				this._description = value;
				this.SendPropertyChanged("description");
				this.OndescriptionChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_projectID", DbType="Int NOT NULL")]
	public int projectID
	{
		get
		{
			return this._projectID;
		}
		set
		{
			if ((this._projectID != value))
			{
				if (this._project.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnprojectIDChanging(value);
				this.SendPropertyChanging();
				this._projectID = value;
				this.SendPropertyChanged("projectID");
				this.OnprojectIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="task_task", Storage="_tasks", ThisKey="id", OtherKey="parentID")]
	public EntitySet<task> tasks
	{
		get
		{
			return this._tasks;
		}
		set
		{
			this._tasks.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="task_taskAssignment", Storage="_taskAssignments", ThisKey="id", OtherKey="taskID")]
	public EntitySet<taskAssignment> taskAssignments
	{
		get
		{
			return this._taskAssignments;
		}
		set
		{
			this._taskAssignments.Assign(value);
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="project_task", Storage="_project", ThisKey="projectID", OtherKey="id", IsForeignKey=true)]
	public project project
	{
		get
		{
			return this._project.Entity;
		}
		set
		{
			project previousValue = this._project.Entity;
			if (((previousValue != value) 
						|| (this._project.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._project.Entity = null;
					previousValue.tasks.Remove(this);
				}
				this._project.Entity = value;
				if ((value != null))
				{
					value.tasks.Add(this);
					this._projectID = value.id;
				}
				else
				{
					this._projectID = default(int);
				}
				this.SendPropertyChanged("project");
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="task_task", Storage="_task1", ThisKey="parentID", OtherKey="id", IsForeignKey=true)]
	public task task1
	{
		get
		{
			return this._task1.Entity;
		}
		set
		{
			task previousValue = this._task1.Entity;
			if (((previousValue != value) 
						|| (this._task1.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._task1.Entity = null;
					previousValue.tasks.Remove(this);
				}
				this._task1.Entity = value;
				if ((value != null))
				{
					value.tasks.Add(this);
					this._parentID = value.id;
				}
				else
				{
					this._parentID = default(Nullable<int>);
				}
				this.SendPropertyChanged("task1");
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="user_task", Storage="_user", ThisKey="leaderID", OtherKey="id", IsForeignKey=true)]
	public user user
	{
		get
		{
			return this._user.Entity;
		}
		set
		{
			user previousValue = this._user.Entity;
			if (((previousValue != value) 
						|| (this._user.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._user.Entity = null;
					previousValue.tasks.Remove(this);
				}
				this._user.Entity = value;
				if ((value != null))
				{
					value.tasks.Add(this);
					this._leaderID = value.id;
				}
				else
				{
					this._leaderID = default(int);
				}
				this.SendPropertyChanged("user");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_tasks(task entity)
	{
		this.SendPropertyChanging();
		entity.task1 = this;
	}
	
	private void detach_tasks(task entity)
	{
		this.SendPropertyChanging();
		entity.task1 = null;
	}
	
	private void attach_taskAssignments(taskAssignment entity)
	{
		this.SendPropertyChanging();
		entity.task = this;
	}
	
	private void detach_taskAssignments(taskAssignment entity)
	{
		this.SendPropertyChanging();
		entity.task = null;
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.taskAssignment")]
public partial class taskAssignment : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _id;
	
	private int _userID;
	
	private int _taskID;
	
	private EntityRef<task> _task;
	
	private EntityRef<user> _user;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OnuserIDChanging(int value);
    partial void OnuserIDChanged();
    partial void OntaskIDChanging(int value);
    partial void OntaskIDChanged();
    #endregion
	
	public taskAssignment()
	{
		this._task = default(EntityRef<task>);
		this._user = default(EntityRef<user>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int id
	{
		get
		{
			return this._id;
		}
		set
		{
			if ((this._id != value))
			{
				this.OnidChanging(value);
				this.SendPropertyChanging();
				this._id = value;
				this.SendPropertyChanged("id");
				this.OnidChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userID", DbType="Int NOT NULL")]
	public int userID
	{
		get
		{
			return this._userID;
		}
		set
		{
			if ((this._userID != value))
			{
				if (this._user.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnuserIDChanging(value);
				this.SendPropertyChanging();
				this._userID = value;
				this.SendPropertyChanged("userID");
				this.OnuserIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_taskID", DbType="Int NOT NULL")]
	public int taskID
	{
		get
		{
			return this._taskID;
		}
		set
		{
			if ((this._taskID != value))
			{
				if (this._task.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OntaskIDChanging(value);
				this.SendPropertyChanging();
				this._taskID = value;
				this.SendPropertyChanged("taskID");
				this.OntaskIDChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="task_taskAssignment", Storage="_task", ThisKey="taskID", OtherKey="id", IsForeignKey=true)]
	public task task
	{
		get
		{
			return this._task.Entity;
		}
		set
		{
			task previousValue = this._task.Entity;
			if (((previousValue != value) 
						|| (this._task.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._task.Entity = null;
					previousValue.taskAssignments.Remove(this);
				}
				this._task.Entity = value;
				if ((value != null))
				{
					value.taskAssignments.Add(this);
					this._taskID = value.id;
				}
				else
				{
					this._taskID = default(int);
				}
				this.SendPropertyChanged("task");
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="user_taskAssignment", Storage="_user", ThisKey="userID", OtherKey="id", IsForeignKey=true)]
	public user user
	{
		get
		{
			return this._user.Entity;
		}
		set
		{
			user previousValue = this._user.Entity;
			if (((previousValue != value) 
						|| (this._user.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._user.Entity = null;
					previousValue.taskAssignments.Remove(this);
				}
				this._user.Entity = value;
				if ((value != null))
				{
					value.taskAssignments.Add(this);
					this._userID = value.id;
				}
				else
				{
					this._userID = default(int);
				}
				this.SendPropertyChanged("user");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
