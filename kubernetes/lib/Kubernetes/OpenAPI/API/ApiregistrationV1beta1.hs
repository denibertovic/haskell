{-
   Kubernetes

   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: 2.0
   Kubernetes API version: v1.9.12
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : Kubernetes.OpenAPI.API.ApiregistrationV1beta1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.OpenAPI.API.ApiregistrationV1beta1 where

import Kubernetes.OpenAPI.Core
import Kubernetes.OpenAPI.MimeTypes
import Kubernetes.OpenAPI.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** ApiregistrationV1beta1

-- *** createAPIService

-- | @POST \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices@
-- 
-- create an APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createAPIService 
  :: (Consumes CreateAPIService contentType, MimeRender contentType V1beta1APIService)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1beta1APIService -- ^ "body"
  -> KubernetesRequest CreateAPIService contentType V1beta1APIService accept
createAPIService _  _ body =
  _mkRequest "POST" ["/apis/apiregistration.k8s.io/v1beta1/apiservices"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateAPIService 
instance HasBodyParam CreateAPIService V1beta1APIService 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateAPIService mtype

-- | @application/json@
instance Produces CreateAPIService MimeJSON
-- | @application/yaml@
instance Produces CreateAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateAPIService MimeVndKubernetesProtobuf


-- *** deleteAPIService

-- | @DELETE \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices\/{name}@
-- 
-- delete an APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteAPIService 
  :: (Consumes DeleteAPIService contentType, MimeRender contentType V1DeleteOptions)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the APIService
  -> V1DeleteOptions -- ^ "body"
  -> KubernetesRequest DeleteAPIService contentType V1Status accept
deleteAPIService _  _ (Name name) body =
  _mkRequest "DELETE" ["/apis/apiregistration.k8s.io/v1beta1/apiservices/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data DeleteAPIService 
instance HasBodyParam DeleteAPIService V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteAPIService GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteAPIService OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteAPIService PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteAPIService mtype

-- | @application/json@
instance Produces DeleteAPIService MimeJSON
-- | @application/yaml@
instance Produces DeleteAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteAPIService MimeVndKubernetesProtobuf


-- *** deleteCollectionAPIService

-- | @DELETE \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices@
-- 
-- delete collection of APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionAPIService 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest DeleteCollectionAPIService MimeNoContent V1Status accept
deleteCollectionAPIService  _ =
  _mkRequest "DELETE" ["/apis/apiregistration.k8s.io/v1beta1/apiservices"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionAPIService  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionAPIService Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionAPIService FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam DeleteCollectionAPIService IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionAPIService LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionAPIService Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam DeleteCollectionAPIService ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam DeleteCollectionAPIService TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam DeleteCollectionAPIService Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteCollectionAPIService mtype

-- | @application/json@
instance Produces DeleteCollectionAPIService MimeJSON
-- | @application/yaml@
instance Produces DeleteCollectionAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionAPIService MimeVndKubernetesProtobuf


-- *** getAPIResources

-- | @GET \/apis\/apiregistration.k8s.io\/v1beta1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/apiregistration.k8s.io/v1beta1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  

-- | @application/json@
instance Consumes GetAPIResources MimeJSON
-- | @application/yaml@
instance Consumes GetAPIResources MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Consumes GetAPIResources MimeVndKubernetesProtobuf

-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf


-- *** listAPIService

-- | @GET \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices@
-- 
-- list or watch objects of kind APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listAPIService 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListAPIService MimeNoContent V1beta1APIServiceList accept
listAPIService  _ =
  _mkRequest "GET" ["/apis/apiregistration.k8s.io/v1beta1/apiservices"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListAPIService  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListAPIService Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListAPIService FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam ListAPIService IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListAPIService LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListAPIService Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListAPIService ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam ListAPIService TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListAPIService Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ListAPIService mtype

-- | @application/json@
instance Produces ListAPIService MimeJSON
-- | @application/yaml@
instance Produces ListAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListAPIService MimeVndKubernetesProtobuf
-- | @application/json;stream=watch@
instance Produces ListAPIService MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListAPIService MimeVndKubernetesProtobufstreamwatch


-- *** patchAPIService

-- | @PATCH \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices\/{name}@
-- 
-- partially update the specified APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchAPIService 
  :: (Consumes PatchAPIService contentType, MimeRender contentType A.Value)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the APIService
  -> A.Value -- ^ "body"
  -> KubernetesRequest PatchAPIService contentType V1beta1APIService accept
patchAPIService _  _ (Name name) body =
  _mkRequest "PATCH" ["/apis/apiregistration.k8s.io/v1beta1/apiservices/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchAPIService 
instance HasBodyParam PatchAPIService A.Value 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @application/json-patch+json@
instance Consumes PatchAPIService MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchAPIService MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchAPIService MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchAPIService MimeJSON
-- | @application/yaml@
instance Produces PatchAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchAPIService MimeVndKubernetesProtobuf


-- *** readAPIService

-- | @GET \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices\/{name}@
-- 
-- read the specified APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readAPIService 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the APIService
  -> KubernetesRequest ReadAPIService MimeNoContent V1beta1APIService accept
readAPIService  _ (Name name) =
  _mkRequest "GET" ["/apis/apiregistration.k8s.io/v1beta1/apiservices/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadAPIService  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "exact" - Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'.
instance HasOptionalParam ReadAPIService Exact where
  applyOptionalParam req (Exact xs) =
    req `setQuery` toQuery ("exact", Just xs)

-- | /Optional Param/ "export" - Should this value be exported.  Export strips fields that a user can not specify.
instance HasOptionalParam ReadAPIService Export where
  applyOptionalParam req (Export xs) =
    req `setQuery` toQuery ("export", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReadAPIService mtype

-- | @application/json@
instance Produces ReadAPIService MimeJSON
-- | @application/yaml@
instance Produces ReadAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadAPIService MimeVndKubernetesProtobuf


-- *** replaceAPIService

-- | @PUT \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices\/{name}@
-- 
-- replace the specified APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceAPIService 
  :: (Consumes ReplaceAPIService contentType, MimeRender contentType V1beta1APIService)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the APIService
  -> V1beta1APIService -- ^ "body"
  -> KubernetesRequest ReplaceAPIService contentType V1beta1APIService accept
replaceAPIService _  _ (Name name) body =
  _mkRequest "PUT" ["/apis/apiregistration.k8s.io/v1beta1/apiservices/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceAPIService 
instance HasBodyParam ReplaceAPIService V1beta1APIService 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceAPIService Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplaceAPIService mtype

-- | @application/json@
instance Produces ReplaceAPIService MimeJSON
-- | @application/yaml@
instance Produces ReplaceAPIService MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceAPIService MimeVndKubernetesProtobuf


-- *** replaceAPIServiceStatus

-- | @PUT \/apis\/apiregistration.k8s.io\/v1beta1\/apiservices\/{name}\/status@
-- 
-- replace status of the specified APIService
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceAPIServiceStatus 
  :: (Consumes ReplaceAPIServiceStatus contentType, MimeRender contentType V1beta1APIService)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the APIService
  -> V1beta1APIService -- ^ "body"
  -> KubernetesRequest ReplaceAPIServiceStatus contentType V1beta1APIService accept
replaceAPIServiceStatus _  _ (Name name) body =
  _mkRequest "PUT" ["/apis/apiregistration.k8s.io/v1beta1/apiservices/",toPath name,"/status"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceAPIServiceStatus 
instance HasBodyParam ReplaceAPIServiceStatus V1beta1APIService 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceAPIServiceStatus Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplaceAPIServiceStatus mtype

-- | @application/json@
instance Produces ReplaceAPIServiceStatus MimeJSON
-- | @application/yaml@
instance Produces ReplaceAPIServiceStatus MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceAPIServiceStatus MimeVndKubernetesProtobuf

