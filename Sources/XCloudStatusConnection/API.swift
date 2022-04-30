// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public enum PipelineStatusEnum: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Pipeline has been created.
  case created
  /// A resource (for example, a runner) that the pipeline requires to run is unavailable.
  case waitingForResource
  /// Pipeline is preparing to run.
  case preparing
  /// Pipeline has not started running yet.
  case pending
  /// Pipeline is running.
  case running
  /// At least one stage of the pipeline failed.
  case failed
  /// Pipeline completed successfully.
  case success
  /// Pipeline was canceled before completion.
  case canceled
  /// Pipeline was skipped.
  case skipped
  /// Pipeline needs to be manually started.
  case manual
  /// Pipeline is scheduled to run.
  case scheduled
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CREATED": self = .created
      case "WAITING_FOR_RESOURCE": self = .waitingForResource
      case "PREPARING": self = .preparing
      case "PENDING": self = .pending
      case "RUNNING": self = .running
      case "FAILED": self = .failed
      case "SUCCESS": self = .success
      case "CANCELED": self = .canceled
      case "SKIPPED": self = .skipped
      case "MANUAL": self = .manual
      case "SCHEDULED": self = .scheduled
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .created: return "CREATED"
      case .waitingForResource: return "WAITING_FOR_RESOURCE"
      case .preparing: return "PREPARING"
      case .pending: return "PENDING"
      case .running: return "RUNNING"
      case .failed: return "FAILED"
      case .success: return "SUCCESS"
      case .canceled: return "CANCELED"
      case .skipped: return "SKIPPED"
      case .manual: return "MANUAL"
      case .scheduled: return "SCHEDULED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PipelineStatusEnum, rhs: PipelineStatusEnum) -> Bool {
    switch (lhs, rhs) {
      case (.created, .created): return true
      case (.waitingForResource, .waitingForResource): return true
      case (.preparing, .preparing): return true
      case (.pending, .pending): return true
      case (.running, .running): return true
      case (.failed, .failed): return true
      case (.success, .success): return true
      case (.canceled, .canceled): return true
      case (.skipped, .skipped): return true
      case (.manual, .manual): return true
      case (.scheduled, .scheduled): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PipelineStatusEnum] {
    return [
      .created,
      .waitingForResource,
      .preparing,
      .pending,
      .running,
      .failed,
      .success,
      .canceled,
      .skipped,
      .manual,
      .scheduled,
    ]
  }
}

public enum CiJobStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// A job that is created.
  case created
  /// A job that is waiting for resource.
  case waitingForResource
  /// A job that is preparing.
  case preparing
  /// A job that is pending.
  case pending
  /// A job that is running.
  case running
  /// A job that is success.
  case success
  /// A job that is failed.
  case failed
  /// A job that is canceled.
  case canceled
  /// A job that is skipped.
  case skipped
  /// A job that is manual.
  case manual
  /// A job that is scheduled.
  case scheduled
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CREATED": self = .created
      case "WAITING_FOR_RESOURCE": self = .waitingForResource
      case "PREPARING": self = .preparing
      case "PENDING": self = .pending
      case "RUNNING": self = .running
      case "SUCCESS": self = .success
      case "FAILED": self = .failed
      case "CANCELED": self = .canceled
      case "SKIPPED": self = .skipped
      case "MANUAL": self = .manual
      case "SCHEDULED": self = .scheduled
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .created: return "CREATED"
      case .waitingForResource: return "WAITING_FOR_RESOURCE"
      case .preparing: return "PREPARING"
      case .pending: return "PENDING"
      case .running: return "RUNNING"
      case .success: return "SUCCESS"
      case .failed: return "FAILED"
      case .canceled: return "CANCELED"
      case .skipped: return "SKIPPED"
      case .manual: return "MANUAL"
      case .scheduled: return "SCHEDULED"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CiJobStatus, rhs: CiJobStatus) -> Bool {
    switch (lhs, rhs) {
      case (.created, .created): return true
      case (.waitingForResource, .waitingForResource): return true
      case (.preparing, .preparing): return true
      case (.pending, .pending): return true
      case (.running, .running): return true
      case (.success, .success): return true
      case (.failed, .failed): return true
      case (.canceled, .canceled): return true
      case (.skipped, .skipped): return true
      case (.manual, .manual): return true
      case (.scheduled, .scheduled): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CiJobStatus] {
    return [
      .created,
      .waitingForResource,
      .preparing,
      .pending,
      .running,
      .success,
      .failed,
      .canceled,
      .skipped,
      .manual,
      .scheduled,
    ]
  }
}

public final class ProjectsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query projects {
      projects(membership: true) {
        __typename
        nodes {
          __typename
          name
          avatarUrl
          createdAt
          webUrl
          id
          pipelines {
            __typename
            nodes {
              __typename
              createdAt
              id
              iid
              sha
              commitPath
              createdAt
              status
              startedAt
              finishedAt
              jobs {
                __typename
                nodes {
                  __typename
                  name
                  id
                  finishedAt
                  commitPath
                  coverage
                  createdAt
                  status
                  startedAt
                  commitPath
                  downstreamPipeline {
                    __typename
                    id
                  }
                  queuedAt
                  stage {
                    __typename
                    id
                    name
                    status
                  }
                }
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "projects"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("projects", arguments: ["membership": true], type: .object(Project.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(projects: Project? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "projects": projects.flatMap { (value: Project) -> ResultMap in value.resultMap }])
    }

    /// Find projects visible to the current user.
    public var projects: Project? {
      get {
        return (resultMap["projects"] as? ResultMap).flatMap { Project(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "projects")
      }
    }

    public struct Project: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProjectConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("nodes", type: .list(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(nodes: [Node?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "ProjectConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of nodes.
      public var nodes: [Node?]? {
        get {
          return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Project"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("avatarUrl", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("webUrl", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("pipelines", type: .object(Pipeline.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, avatarUrl: String? = nil, createdAt: String? = nil, webUrl: String? = nil, id: GraphQLID, pipelines: Pipeline? = nil) {
          self.init(unsafeResultMap: ["__typename": "Project", "name": name, "avatarUrl": avatarUrl, "createdAt": createdAt, "webUrl": webUrl, "id": id, "pipelines": pipelines.flatMap { (value: Pipeline) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Name of the project (without namespace).
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// URL to avatar image file of the project.
        public var avatarUrl: String? {
          get {
            return resultMap["avatarUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "avatarUrl")
          }
        }

        /// Timestamp of the project creation.
        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        /// Web URL of the project.
        public var webUrl: String? {
          get {
            return resultMap["webUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "webUrl")
          }
        }

        /// ID of the project.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// Build pipelines of the project.
        public var pipelines: Pipeline? {
          get {
            return (resultMap["pipelines"] as? ResultMap).flatMap { Pipeline(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pipelines")
          }
        }

        public struct Pipeline: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PipelineConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("nodes", type: .list(.object(Node.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(nodes: [Node?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "PipelineConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of nodes.
          public var nodes: [Node?]? {
            get {
              return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Pipeline"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("iid", type: .nonNull(.scalar(String.self))),
                GraphQLField("sha", type: .scalar(String.self)),
                GraphQLField("commitPath", type: .scalar(String.self)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("status", type: .nonNull(.scalar(PipelineStatusEnum.self))),
                GraphQLField("startedAt", type: .scalar(String.self)),
                GraphQLField("finishedAt", type: .scalar(String.self)),
                GraphQLField("jobs", type: .object(Job.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(createdAt: String, id: GraphQLID, iid: String, sha: String? = nil, commitPath: String? = nil, status: PipelineStatusEnum, startedAt: String? = nil, finishedAt: String? = nil, jobs: Job? = nil) {
              self.init(unsafeResultMap: ["__typename": "Pipeline", "createdAt": createdAt, "id": id, "iid": iid, "sha": sha, "commitPath": commitPath, "status": status, "startedAt": startedAt, "finishedAt": finishedAt, "jobs": jobs.flatMap { (value: Job) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Timestamp of the pipeline's creation.
            public var createdAt: String {
              get {
                return resultMap["createdAt"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "createdAt")
              }
            }

            /// ID of the pipeline.
            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// Internal ID of the pipeline.
            public var iid: String {
              get {
                return resultMap["iid"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "iid")
              }
            }

            /// SHA of the pipeline's commit.
            public var sha: String? {
              get {
                return resultMap["sha"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sha")
              }
            }

            /// Path to the commit that triggered the pipeline.
            public var commitPath: String? {
              get {
                return resultMap["commitPath"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "commitPath")
              }
            }

            /// Status of the pipeline (CREATED, WAITING_FOR_RESOURCE, PREPARING, PENDING, RUNNING, FAILED, SUCCESS, CANCELED, SKIPPED, MANUAL, SCHEDULED)
            public var status: PipelineStatusEnum {
              get {
                return resultMap["status"]! as! PipelineStatusEnum
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
              }
            }

            /// Timestamp when the pipeline was started.
            public var startedAt: String? {
              get {
                return resultMap["startedAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "startedAt")
              }
            }

            /// Timestamp of the pipeline's completion.
            public var finishedAt: String? {
              get {
                return resultMap["finishedAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "finishedAt")
              }
            }

            /// Jobs belonging to the pipeline.
            public var jobs: Job? {
              get {
                return (resultMap["jobs"] as? ResultMap).flatMap { Job(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "jobs")
              }
            }

            public struct Job: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CiJobConnection"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("nodes", type: .list(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(nodes: [Node?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "CiJobConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// A list of nodes.
              public var nodes: [Node?]? {
                get {
                  return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["CiJob"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("name", type: .scalar(String.self)),
                    GraphQLField("id", type: .scalar(String.self)),
                    GraphQLField("finishedAt", type: .scalar(String.self)),
                    GraphQLField("commitPath", type: .scalar(String.self)),
                    GraphQLField("coverage", type: .scalar(Double.self)),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("status", type: .scalar(CiJobStatus.self)),
                    GraphQLField("startedAt", type: .scalar(String.self)),
                    GraphQLField("commitPath", type: .scalar(String.self)),
                    GraphQLField("downstreamPipeline", type: .object(DownstreamPipeline.selections)),
                    GraphQLField("queuedAt", type: .scalar(String.self)),
                    GraphQLField("stage", type: .object(Stage.selections)),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(name: String? = nil, id: String? = nil, finishedAt: String? = nil, commitPath: String? = nil, coverage: Double? = nil, createdAt: String, status: CiJobStatus? = nil, startedAt: String? = nil, downstreamPipeline: DownstreamPipeline? = nil, queuedAt: String? = nil, stage: Stage? = nil) {
                  self.init(unsafeResultMap: ["__typename": "CiJob", "name": name, "id": id, "finishedAt": finishedAt, "commitPath": commitPath, "coverage": coverage, "createdAt": createdAt, "status": status, "startedAt": startedAt, "downstreamPipeline": downstreamPipeline.flatMap { (value: DownstreamPipeline) -> ResultMap in value.resultMap }, "queuedAt": queuedAt, "stage": stage.flatMap { (value: Stage) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Name of the job.
                public var name: String? {
                  get {
                    return resultMap["name"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// ID of the job.
                public var id: String? {
                  get {
                    return resultMap["id"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// When a job has finished running.
                public var finishedAt: String? {
                  get {
                    return resultMap["finishedAt"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "finishedAt")
                  }
                }

                /// Path to the commit that triggered the job.
                public var commitPath: String? {
                  get {
                    return resultMap["commitPath"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "commitPath")
                  }
                }

                /// Coverage level of the job.
                public var coverage: Double? {
                  get {
                    return resultMap["coverage"] as? Double
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "coverage")
                  }
                }

                /// When the job was created.
                public var createdAt: String {
                  get {
                    return resultMap["createdAt"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "createdAt")
                  }
                }

                /// Status of the job.
                public var status: CiJobStatus? {
                  get {
                    return resultMap["status"] as? CiJobStatus
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "status")
                  }
                }

                /// When the job was started.
                public var startedAt: String? {
                  get {
                    return resultMap["startedAt"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "startedAt")
                  }
                }

                /// Downstream pipeline for a bridge.
                public var downstreamPipeline: DownstreamPipeline? {
                  get {
                    return (resultMap["downstreamPipeline"] as? ResultMap).flatMap { DownstreamPipeline(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "downstreamPipeline")
                  }
                }

                /// When the job was enqueued and marked as pending.
                public var queuedAt: String? {
                  get {
                    return resultMap["queuedAt"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "queuedAt")
                  }
                }

                /// Stage of the job.
                public var stage: Stage? {
                  get {
                    return (resultMap["stage"] as? ResultMap).flatMap { Stage(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "stage")
                  }
                }

                public struct DownstreamPipeline: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Pipeline"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: GraphQLID) {
                    self.init(unsafeResultMap: ["__typename": "Pipeline", "id": id])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// ID of the pipeline.
                  public var id: GraphQLID {
                    get {
                      return resultMap["id"]! as! GraphQLID
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }
                }

                public struct Stage: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["CiStage"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("status", type: .scalar(String.self)),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: GraphQLID, name: String? = nil, status: String? = nil) {
                    self.init(unsafeResultMap: ["__typename": "CiStage", "id": id, "name": name, "status": status])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// ID of the stage.
                  public var id: GraphQLID {
                    get {
                      return resultMap["id"]! as! GraphQLID
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  /// Name of the stage.
                  public var name: String? {
                    get {
                      return resultMap["name"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "name")
                    }
                  }

                  /// Status of the pipeline stage.
                  public var status: String? {
                    get {
                      return resultMap["status"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "status")
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class AccprojectsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query accprojects {
      projects(membership: true) {
        __typename
        nodes {
          __typename
          name
          avatarUrl
          createdAt
          webUrl
          id
          pipelines {
            __typename
            nodes {
              __typename
              createdAt
              id
              iid
              sha
              commitPath
              createdAt
              status
              startedAt
              finishedAt
              jobs {
                __typename
                nodes {
                  __typename
                  name
                  id
                  finishedAt
                  commitPath
                  coverage
                  createdAt
                  status
                  startedAt
                  commitPath
                  downstreamPipeline {
                    __typename
                    id
                  }
                  queuedAt
                  stage {
                    __typename
                    id
                    name
                    status
                  }
                }
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "accprojects"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("projects", arguments: ["membership": true], type: .object(Project.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(projects: Project? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "projects": projects.flatMap { (value: Project) -> ResultMap in value.resultMap }])
    }

    /// Find projects visible to the current user.
    public var projects: Project? {
      get {
        return (resultMap["projects"] as? ResultMap).flatMap { Project(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "projects")
      }
    }

    public struct Project: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProjectConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("nodes", type: .list(.object(Node.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(nodes: [Node?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "ProjectConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of nodes.
      public var nodes: [Node?]? {
        get {
          return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
        }
      }

      public struct Node: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Project"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
            GraphQLField("avatarUrl", type: .scalar(String.self)),
            GraphQLField("createdAt", type: .scalar(String.self)),
            GraphQLField("webUrl", type: .scalar(String.self)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("pipelines", type: .object(Pipeline.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String, avatarUrl: String? = nil, createdAt: String? = nil, webUrl: String? = nil, id: GraphQLID, pipelines: Pipeline? = nil) {
          self.init(unsafeResultMap: ["__typename": "Project", "name": name, "avatarUrl": avatarUrl, "createdAt": createdAt, "webUrl": webUrl, "id": id, "pipelines": pipelines.flatMap { (value: Pipeline) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// Name of the project (without namespace).
        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// URL to avatar image file of the project.
        public var avatarUrl: String? {
          get {
            return resultMap["avatarUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "avatarUrl")
          }
        }

        /// Timestamp of the project creation.
        public var createdAt: String? {
          get {
            return resultMap["createdAt"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "createdAt")
          }
        }

        /// Web URL of the project.
        public var webUrl: String? {
          get {
            return resultMap["webUrl"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "webUrl")
          }
        }

        /// ID of the project.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// Build pipelines of the project.
        public var pipelines: Pipeline? {
          get {
            return (resultMap["pipelines"] as? ResultMap).flatMap { Pipeline(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "pipelines")
          }
        }

        public struct Pipeline: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["PipelineConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("nodes", type: .list(.object(Node.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(nodes: [Node?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "PipelineConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of nodes.
          public var nodes: [Node?]? {
            get {
              return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
            }
          }

          public struct Node: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Pipeline"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("iid", type: .nonNull(.scalar(String.self))),
                GraphQLField("sha", type: .scalar(String.self)),
                GraphQLField("commitPath", type: .scalar(String.self)),
                GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("status", type: .nonNull(.scalar(PipelineStatusEnum.self))),
                GraphQLField("startedAt", type: .scalar(String.self)),
                GraphQLField("finishedAt", type: .scalar(String.self)),
                GraphQLField("jobs", type: .object(Job.selections)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(createdAt: String, id: GraphQLID, iid: String, sha: String? = nil, commitPath: String? = nil, status: PipelineStatusEnum, startedAt: String? = nil, finishedAt: String? = nil, jobs: Job? = nil) {
              self.init(unsafeResultMap: ["__typename": "Pipeline", "createdAt": createdAt, "id": id, "iid": iid, "sha": sha, "commitPath": commitPath, "status": status, "startedAt": startedAt, "finishedAt": finishedAt, "jobs": jobs.flatMap { (value: Job) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Timestamp of the pipeline's creation.
            public var createdAt: String {
              get {
                return resultMap["createdAt"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "createdAt")
              }
            }

            /// ID of the pipeline.
            public var id: GraphQLID {
              get {
                return resultMap["id"]! as! GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// Internal ID of the pipeline.
            public var iid: String {
              get {
                return resultMap["iid"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "iid")
              }
            }

            /// SHA of the pipeline's commit.
            public var sha: String? {
              get {
                return resultMap["sha"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "sha")
              }
            }

            /// Path to the commit that triggered the pipeline.
            public var commitPath: String? {
              get {
                return resultMap["commitPath"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "commitPath")
              }
            }

            /// Status of the pipeline (CREATED, WAITING_FOR_RESOURCE, PREPARING, PENDING, RUNNING, FAILED, SUCCESS, CANCELED, SKIPPED, MANUAL, SCHEDULED)
            public var status: PipelineStatusEnum {
              get {
                return resultMap["status"]! as! PipelineStatusEnum
              }
              set {
                resultMap.updateValue(newValue, forKey: "status")
              }
            }

            /// Timestamp when the pipeline was started.
            public var startedAt: String? {
              get {
                return resultMap["startedAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "startedAt")
              }
            }

            /// Timestamp of the pipeline's completion.
            public var finishedAt: String? {
              get {
                return resultMap["finishedAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "finishedAt")
              }
            }

            /// Jobs belonging to the pipeline.
            public var jobs: Job? {
              get {
                return (resultMap["jobs"] as? ResultMap).flatMap { Job(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "jobs")
              }
            }

            public struct Job: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CiJobConnection"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("nodes", type: .list(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(nodes: [Node?]? = nil) {
                self.init(unsafeResultMap: ["__typename": "CiJobConnection", "nodes": nodes.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// A list of nodes.
              public var nodes: [Node?]? {
                get {
                  return (resultMap["nodes"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Node?] in value.map { (value: ResultMap?) -> Node? in value.flatMap { (value: ResultMap) -> Node in Node(unsafeResultMap: value) } } }
                }
                set {
                  resultMap.updateValue(newValue.flatMap { (value: [Node?]) -> [ResultMap?] in value.map { (value: Node?) -> ResultMap? in value.flatMap { (value: Node) -> ResultMap in value.resultMap } } }, forKey: "nodes")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["CiJob"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("name", type: .scalar(String.self)),
                    GraphQLField("id", type: .scalar(String.self)),
                    GraphQLField("finishedAt", type: .scalar(String.self)),
                    GraphQLField("commitPath", type: .scalar(String.self)),
                    GraphQLField("coverage", type: .scalar(Double.self)),
                    GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                    GraphQLField("status", type: .scalar(CiJobStatus.self)),
                    GraphQLField("startedAt", type: .scalar(String.self)),
                    GraphQLField("commitPath", type: .scalar(String.self)),
                    GraphQLField("downstreamPipeline", type: .object(DownstreamPipeline.selections)),
                    GraphQLField("queuedAt", type: .scalar(String.self)),
                    GraphQLField("stage", type: .object(Stage.selections)),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(name: String? = nil, id: String? = nil, finishedAt: String? = nil, commitPath: String? = nil, coverage: Double? = nil, createdAt: String, status: CiJobStatus? = nil, startedAt: String? = nil, downstreamPipeline: DownstreamPipeline? = nil, queuedAt: String? = nil, stage: Stage? = nil) {
                  self.init(unsafeResultMap: ["__typename": "CiJob", "name": name, "id": id, "finishedAt": finishedAt, "commitPath": commitPath, "coverage": coverage, "createdAt": createdAt, "status": status, "startedAt": startedAt, "downstreamPipeline": downstreamPipeline.flatMap { (value: DownstreamPipeline) -> ResultMap in value.resultMap }, "queuedAt": queuedAt, "stage": stage.flatMap { (value: Stage) -> ResultMap in value.resultMap }])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Name of the job.
                public var name: String? {
                  get {
                    return resultMap["name"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "name")
                  }
                }

                /// ID of the job.
                public var id: String? {
                  get {
                    return resultMap["id"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// When a job has finished running.
                public var finishedAt: String? {
                  get {
                    return resultMap["finishedAt"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "finishedAt")
                  }
                }

                /// Path to the commit that triggered the job.
                public var commitPath: String? {
                  get {
                    return resultMap["commitPath"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "commitPath")
                  }
                }

                /// Coverage level of the job.
                public var coverage: Double? {
                  get {
                    return resultMap["coverage"] as? Double
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "coverage")
                  }
                }

                /// When the job was created.
                public var createdAt: String {
                  get {
                    return resultMap["createdAt"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "createdAt")
                  }
                }

                /// Status of the job.
                public var status: CiJobStatus? {
                  get {
                    return resultMap["status"] as? CiJobStatus
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "status")
                  }
                }

                /// When the job was started.
                public var startedAt: String? {
                  get {
                    return resultMap["startedAt"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "startedAt")
                  }
                }

                /// Downstream pipeline for a bridge.
                public var downstreamPipeline: DownstreamPipeline? {
                  get {
                    return (resultMap["downstreamPipeline"] as? ResultMap).flatMap { DownstreamPipeline(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "downstreamPipeline")
                  }
                }

                /// When the job was enqueued and marked as pending.
                public var queuedAt: String? {
                  get {
                    return resultMap["queuedAt"] as? String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "queuedAt")
                  }
                }

                /// Stage of the job.
                public var stage: Stage? {
                  get {
                    return (resultMap["stage"] as? ResultMap).flatMap { Stage(unsafeResultMap: $0) }
                  }
                  set {
                    resultMap.updateValue(newValue?.resultMap, forKey: "stage")
                  }
                }

                public struct DownstreamPipeline: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["Pipeline"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: GraphQLID) {
                    self.init(unsafeResultMap: ["__typename": "Pipeline", "id": id])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// ID of the pipeline.
                  public var id: GraphQLID {
                    get {
                      return resultMap["id"]! as! GraphQLID
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }
                }

                public struct Stage: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["CiStage"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                      GraphQLField("name", type: .scalar(String.self)),
                      GraphQLField("status", type: .scalar(String.self)),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(id: GraphQLID, name: String? = nil, status: String? = nil) {
                    self.init(unsafeResultMap: ["__typename": "CiStage", "id": id, "name": name, "status": status])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// ID of the stage.
                  public var id: GraphQLID {
                    get {
                      return resultMap["id"]! as! GraphQLID
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "id")
                    }
                  }

                  /// Name of the stage.
                  public var name: String? {
                    get {
                      return resultMap["name"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "name")
                    }
                  }

                  /// Status of the pipeline stage.
                  public var status: String? {
                    get {
                      return resultMap["status"] as? String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "status")
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
