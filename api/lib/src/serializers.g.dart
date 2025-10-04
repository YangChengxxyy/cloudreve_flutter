// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(Activity.serializer)
      ..add(ActivityUser.serializer)
      ..add(ActivityUserAvatarEnum.serializer)
      ..add(ActivityUserGroup.serializer)
      ..add(ActivityUserShareLinksInProfileEnum.serializer)
      ..add(ArchiveWorkflowService.serializer)
      ..add(ArchivedFile.serializer)
      ..add(CallbackCosSessionIdKeyGet200Response.serializer)
      ..add(CaptchaFields.serializer)
      ..add(CreateDavAccountService.serializer)
      ..add(CustomHTML.serializer)
      ..add(CustomNavItem.serializer)
      ..add(CustomProps.serializer)
      ..add(CustomPropsTypeEnum.serializer)
      ..add(DavAccount.serializer)
      ..add(DevicesDavGet200Response.serializer)
      ..add(DevicesDavGet200ResponseDataInner.serializer)
      ..add(DevicesDavGet200ResponseDataInnerPagination.serializer)
      ..add(DevicesDavIdDelete200Response.serializer)
      ..add(DevicesDavIdPatch200Response.serializer)
      ..add(DevicesDavPut200Response.serializer)
      ..add(Entity.serializer)
      ..add(EntityCreatedBy.serializer)
      ..add(EntityCreatedByAvatarEnum.serializer)
      ..add(EntityCreatedByGroup.serializer)
      ..add(EntityCreatedByShareLinksInProfileEnum.serializer)
      ..add(EntityStoragePolicy.serializer)
      ..add(EntityTypeEnum.serializer)
      ..add(ExplorerView.serializer)
      ..add(ExplorerViewOrderDirectionEnum.serializer)
      ..add(ExplorerViewViewEnum.serializer)
      ..add(ExtendedInfo.serializer)
      ..add(ExtendedInfoDirectLinksInner.serializer)
      ..add(ExtendedInfoStoragePolicy.serializer)
      ..add(FileActivitiesGet200Response.serializer)
      ..add(FileActivitiesResponse.serializer)
      ..add(FileActivitiesResponsePagination.serializer)
      ..add(FileArchiveGet200Response.serializer)
      ..add(FileArchiveGet200ResponseData.serializer)
      ..add(FileContentPut200Response.serializer)
      ..add(FileContentPut200ResponseData.serializer)
      ..add(FileContentPut200ResponseDataTypeEnum.serializer)
      ..add(FileCreatePost200Response.serializer)
      ..add(FileCreatePost200ResponseData.serializer)
      ..add(FileCreatePost200ResponseDataTypeEnum.serializer)
      ..add(FileCreatePostRequest.serializer)
      ..add(FileCreatePostRequestTypeEnum.serializer)
      ..add(FileDelete200Response.serializer)
      ..add(FileDeleteRequest.serializer)
      ..add(FileGet200Response.serializer)
      ..add(FileInfoGet200Response.serializer)
      ..add(FileLockDelete200Response.serializer)
      ..add(FileLockDeleteRequest.serializer)
      ..add(FileMetadataPatch200Response.serializer)
      ..add(FileMetadataPatchRequest.serializer)
      ..add(FileMetadataPatchRequestPatchesInner.serializer)
      ..add(FileMovePost200Response.serializer)
      ..add(FileMovePostRequest.serializer)
      ..add(FilePermissionDelete200Response.serializer)
      ..add(FilePermissionDeleteRequest.serializer)
      ..add(FilePermissionPost200Response.serializer)
      ..add(FilePermissionPostRequest.serializer)
      ..add(FilePinPut200Response.serializer)
      ..add(FilePolicyPatch200Response.serializer)
      ..add(FilePolicyPatchRequest.serializer)
      ..add(FileRenamePost200Response.serializer)
      ..add(FileRenamePost200ResponseData.serializer)
      ..add(FileRenamePost200ResponseDataTypeEnum.serializer)
      ..add(FileRenamePostRequest.serializer)
      ..add(FileRenamePostRequestTypeEnum.serializer)
      ..add(FileResponse.serializer)
      ..add(FileResponseTypeEnum.serializer)
      ..add(FileRestorePost200Response.serializer)
      ..add(FileRestorePostRequest.serializer)
      ..add(FileSourceIdDelete200Response.serializer)
      ..add(FileSourcePut200Response.serializer)
      ..add(FileSourcePut200ResponseDataInner.serializer)
      ..add(FileSourcePutRequest.serializer)
      ..add(FileThumbGet200Response.serializer)
      ..add(FileThumbGet200ResponseData.serializer)
      ..add(FileUploadDelete200Response.serializer)
      ..add(FileUploadDeleteRequest.serializer)
      ..add(FileUploadPut200Response.serializer)
      ..add(FileUploadPut200ResponseData.serializer)
      ..add(FileUploadPutRequest.serializer)
      ..add(FileUploadPutRequestEntityTypeEnum.serializer)
      ..add(FileUploadSessionIdIndexPost200Response.serializer)
      ..add(FileUrlPost200Response.serializer)
      ..add(FileUrlPost200ResponseData.serializer)
      ..add(FileUrlPost200ResponseDataUrlsInner.serializer)
      ..add(FileUrlPostRequest.serializer)
      ..add(FileVersionCurrentPost200Response.serializer)
      ..add(FileVersionCurrentPostRequest.serializer)
      ..add(FileVersionDelete200Response.serializer)
      ..add(FileViewPatch200Response.serializer)
      ..add(FileViewPatchRequest.serializer)
      ..add(FileViewer.serializer)
      ..add(FileViewerSessionPut200Response.serializer)
      ..add(FileViewerSessionPut200ResponseData.serializer)
      ..add(FileViewerSessionPut200ResponseDataSession.serializer)
      ..add(FileViewerSessionPutRequest.serializer)
      ..add(FileViewerSessionPutRequestPreferredActionEnum.serializer)
      ..add(FileViewerViewersInner.serializer)
      ..add(FileViewerViewersInnerDisplayNameEnum.serializer)
      ..add(FolderSummary.serializer)
      ..add(Group.serializer)
      ..add(GroupListGet200Response.serializer)
      ..add(GroupListGet200ResponseDataInner.serializer)
      ..add(GroupSKU.serializer)
      ..add(ListResponse.serializer)
      ..add(ListShareResponse.serializer)
      ..add(ListShareResponsePagination.serializer)
      ..add(ListViewColumn.serializer)
      ..add(ListViewColumnProps.serializer)
      ..add(LogEntry.serializer)
      ..add(LoginResponse.serializer)
      ..add(NavigatorProps.serializer)
      ..add(Node.serializer)
      ..add(NodeTypeEnum.serializer)
      ..add(PaginationResults.serializer)
      ..add(Passkey.serializer)
      ..add(Payment.serializer)
      ..add(PaymentProductTypeEnum.serializer)
      ..add(PaymentProvider.serializer)
      ..add(PaymentProviderTypeEnum.serializer)
      ..add(PaymentSetting.serializer)
      ..add(PaymentStatusEnum.serializer)
      ..add(PermissionSetting.serializer)
      ..add(PinFileService.serializer)
      ..add(Progress.serializer)
      ..add(Response.serializer)
      ..add(SessionAuthnPost200Response.serializer)
      ..add(SessionAuthnPostRequest.serializer)
      ..add(SessionAuthnPut200Response.serializer)
      ..add(SessionAuthnPut200ResponseData.serializer)
      ..add(SessionOpenidPost200Response.serializer)
      ..add(SessionOpenidPostRequest.serializer)
      ..add(SessionOpenidProviderIdDelete200Response.serializer)
      ..add(SessionOpenidPut200Response.serializer)
      ..add(SessionOpenidPutRequest.serializer)
      ..add(SessionOpenidPutRequestProviderEnum.serializer)
      ..add(SessionPrepareGet200Response.serializer)
      ..add(SessionPrepareGet200ResponseData.serializer)
      ..add(SessionToken2faPost200Response.serializer)
      ..add(SessionToken2faPostRequest.serializer)
      ..add(SessionTokenDelete200Response.serializer)
      ..add(SessionTokenDeleteRequest.serializer)
      ..add(SessionTokenPost200Response.serializer)
      ..add(SessionTokenPostRequest.serializer)
      ..add(SessionTokenRefreshPost200Response.serializer)
      ..add(Share.serializer)
      ..add(ShareCreateService.serializer)
      ..add(ShareGet200Response.serializer)
      ..add(ShareIdDelete200Response.serializer)
      ..add(ShareIdPost200Response.serializer)
      ..add(ShareIdPostRequest.serializer)
      ..add(ShareInfoIdGet200Response.serializer)
      ..add(ShareOwner.serializer)
      ..add(ShareOwnerShareLinksInProfileEnum.serializer)
      ..add(SharePermissionSetting.serializer)
      ..add(SharePut200Response.serializer)
      ..add(ShareSourceTypeEnum.serializer)
      ..add(SiteAbusePost200Response.serializer)
      ..add(SiteAbusePostRequest.serializer)
      ..add(SiteAbusePostRequestCategoryEnum.serializer)
      ..add(SiteCaptchaGet200Response.serializer)
      ..add(SiteCaptchaGet200ResponseData.serializer)
      ..add(SiteConfig.serializer)
      ..add(SiteConfigCaptchaTypeEnum.serializer)
      ..add(SiteConfigCustomNavItemsInner.serializer)
      ..add(SiteConfigFileViewersInner.serializer)
      ..add(SiteConfigGoogleMapTileTypeEnum.serializer)
      ..add(SiteConfigGroupSkusInner.serializer)
      ..add(SiteConfigMapProviderEnum.serializer)
      ..add(SiteConfigSectionGet200Response.serializer)
      ..add(SiteConfigStorageProductsInner.serializer)
      ..add(SitePingGet200Response.serializer)
      ..add(SitePingGet200ResponseData.serializer)
      ..add(SitePingGet200ResponseDataOptions.serializer)
      ..add(StoragePolicy.serializer)
      ..add(StoragePolicyTypeEnum.serializer)
      ..add(StorageProduct.serializer)
      ..add(TaskListResponse.serializer)
      ..add(TaskListResponsePagination.serializer)
      ..add(TaskResponse.serializer)
      ..add(TaskResponseStatusEnum.serializer)
      ..add(TaskResponseSummary.serializer)
      ..add(TaskResponseTypeEnum.serializer)
      ..add(Token.serializer)
      ..add(User.serializer)
      ..add(UserAuthnDelete200Response.serializer)
      ..add(UserAuthnPost200Response.serializer)
      ..add(UserAuthnPostRequest.serializer)
      ..add(UserAuthnPut200Response.serializer)
      ..add(UserAuthnPut200ResponseData.serializer)
      ..add(UserAvatarEnum.serializer)
      ..add(UserCapacityGet200Response.serializer)
      ..add(UserCapacityGet200ResponseData.serializer)
      ..add(UserCreditChangesGet200Response.serializer)
      ..add(UserCreditChangesGet200ResponseData.serializer)
      ..add(UserCreditChangesGet200ResponseDataChangesInner.serializer)
      ..add(UserCreditChangesGet200ResponseDataPagination.serializer)
      ..add(UserInfoUserIdGet200Response.serializer)
      ..add(UserInfoUserIdGet200ResponseData.serializer)
      ..add(UserInfoUserIdGet200ResponseDataAvatarEnum.serializer)
      ..add(UserInfoUserIdGet200ResponseDataGroup.serializer)
      ..add(UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum.serializer)
      ..add(UserPaymentsGet200Response.serializer)
      ..add(UserPaymentsGet200ResponseData.serializer)
      ..add(UserPaymentsGet200ResponseDataPagination.serializer)
      ..add(UserPost200Response.serializer)
      ..add(UserPostRequest.serializer)
      ..add(UserResetPost200Response.serializer)
      ..add(UserResetPostRequest.serializer)
      ..add(UserResetUserIdPatch200Response.serializer)
      ..add(UserResetUserIdPatchRequest.serializer)
      ..add(UserSearchGet200Response.serializer)
      ..add(UserSearchGet200ResponseDataInner.serializer)
      ..add(UserSearchGet200ResponseDataInnerAvatarEnum.serializer)
      ..add(UserSearchGet200ResponseDataInnerGroup.serializer)
      ..add(UserSearchGet200ResponseDataInnerShareLinksInProfileEnum.serializer)
      ..add(UserSetting2faGet200Response.serializer)
      ..add(UserSettingAvatarPut200Response.serializer)
      ..add(UserSettingGet200Response.serializer)
      ..add(UserSettingGet200ResponseData.serializer)
      ..add(UserSettingGet200ResponseDataLoginActivityInner.serializer)
      ..add(UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum
          .serializer)
      ..add(UserSettingGet200ResponseDataOpenIdInner.serializer)
      ..add(UserSettingGet200ResponseDataOpenIdInnerProviderEnum.serializer)
      ..add(UserSettingGet200ResponseDataShareLinksInProfileEnum.serializer)
      ..add(UserSettingGet200ResponseDataStoragePacksInner.serializer)
      ..add(UserSettingNodesGet200Response.serializer)
      ..add(UserSettingPatch200Response.serializer)
      ..add(UserSettingPatchRequest.serializer)
      ..add(UserSettingPoliciesGet200Response.serializer)
      ..add(UserShareLinksInProfileEnum.serializer)
      ..add(UserSharesUserIdGet200Response.serializer)
      ..add(UserStatusEnum.serializer)
      ..add(VasGiftcodeCodeGet200Response.serializer)
      ..add(VasGiftcodeCodeGet200ResponseData.serializer)
      ..add(VasGiftcodeCodeRedeemPost200Response.serializer)
      ..add(VasPaymentPut200Response.serializer)
      ..add(VasPaymentPut200ResponseData.serializer)
      ..add(VasPaymentPut200ResponseDataRequest.serializer)
      ..add(VasPaymentPutRequest.serializer)
      ..add(VasPaymentPutRequestProduct.serializer)
      ..add(VasPaymentPutRequestProductTypeEnum.serializer)
      ..add(VasPaymentStatusIdTradeNoGet200Response.serializer)
      ..add(WorkflowArchivePost200Response.serializer)
      ..add(WorkflowArchivePostRequest.serializer)
      ..add(WorkflowDownloadPost200Response.serializer)
      ..add(WorkflowDownloadPostRequest.serializer)
      ..add(WorkflowDownloadTaskIdDelete200Response.serializer)
      ..add(WorkflowDownloadTaskIdPatch200Response.serializer)
      ..add(WorkflowDownloadTaskIdPatchRequest.serializer)
      ..add(WorkflowDownloadTaskIdPatchRequestFilesInner.serializer)
      ..add(WorkflowExtractPost200Response.serializer)
      ..add(WorkflowExtractPostRequest.serializer)
      ..add(WorkflowGet200Response.serializer)
      ..add(WorkflowImportPost200Response.serializer)
      ..add(WorkflowImportPostRequest.serializer)
      ..add(WorkflowProgressIdGet200Response.serializer)
      ..add(WorkflowReloactePost200Response.serializer)
      ..add(WorkflowReloactePostRequest.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Activity)]),
          () => ListBuilder<Activity>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ArchivedFile)]),
          () => ListBuilder<ArchivedFile>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DavAccount)]),
          () => ListBuilder<DavAccount>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(DevicesDavGet200ResponseDataInner)]),
          () => ListBuilder<DevicesDavGet200ResponseDataInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FileResponse)]),
          () => ListBuilder<FileResponse>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(FileSourcePut200ResponseDataInner)]),
          () => ListBuilder<FileSourcePut200ResponseDataInner>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(FileUrlPost200ResponseDataUrlsInner)]),
          () => ListBuilder<FileUrlPost200ResponseDataUrlsInner>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(FileViewerViewersInner)]),
          () => ListBuilder<FileViewerViewersInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(GroupListGet200ResponseDataInner)]),
          () => ListBuilder<GroupListGet200ResponseDataInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ListViewColumn)]),
          () => ListBuilder<ListViewColumn>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Node)]),
          () => ListBuilder<Node>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Payment)]),
          () => ListBuilder<Payment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PaymentProvider)]),
          () => ListBuilder<PaymentProvider>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Share)]),
          () => ListBuilder<Share>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Share)]),
          () => ListBuilder<Share>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Entity)]),
          () => ListBuilder<Entity>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ExtendedInfoDirectLinksInner)]),
          () => ListBuilder<ExtendedInfoDirectLinksInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StoragePolicy)]),
          () => ListBuilder<StoragePolicy>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(FileMetadataPatchRequestPatchesInner)]),
          () => ListBuilder<FileMetadataPatchRequestPatchesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StoragePolicy)]),
          () => ListBuilder<StoragePolicy>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TaskResponse)]),
          () => ListBuilder<TaskResponse>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(UserCreditChangesGet200ResponseDataChangesInner)
          ]),
          () => ListBuilder<UserCreditChangesGet200ResponseDataChangesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(UserSearchGet200ResponseDataInner)]),
          () => ListBuilder<UserSearchGet200ResponseDataInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(UserSettingGet200ResponseDataOpenIdInner)]),
          () => ListBuilder<UserSettingGet200ResponseDataOpenIdInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Passkey)]),
          () => ListBuilder<Passkey>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(UserSettingGet200ResponseDataLoginActivityInner)
          ]),
          () => ListBuilder<UserSettingGet200ResponseDataLoginActivityInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(UserSettingGet200ResponseDataStoragePacksInner)
          ]),
          () => ListBuilder<UserSettingGet200ResponseDataStoragePacksInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(WorkflowDownloadTaskIdPatchRequestFilesInner)
          ]),
          () => ListBuilder<WorkflowDownloadTaskIdPatchRequestFilesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(SiteConfigFileViewersInner)]),
          () => ListBuilder<SiteConfigFileViewersInner?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(SiteConfigStorageProductsInner)]),
          () => ListBuilder<SiteConfigStorageProductsInner?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(SiteConfigGroupSkusInner)]),
          () => ListBuilder<SiteConfigGroupSkusInner?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomProps)]),
          () => ListBuilder<CustomProps>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(SiteConfigCustomNavItemsInner)]),
          () => ListBuilder<SiteConfigCustomNavItemsInner>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Progress)]),
          () => MapBuilder<String, Progress>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(Response)]),
          () => MapBuilder<String, Response>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(
              BuiltMap, const [const FullType(String), const FullType(String)]),
          () => MapBuilder<String, String>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType.nullable(JsonObject)
          ]),
          () => MapBuilder<String, JsonObject?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
