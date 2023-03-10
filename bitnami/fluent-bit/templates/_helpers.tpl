{{/* vim: set filetype=mustache: */}}


{{/*
Return the proper fluent-bit image name
*/}}
{{- define "fluentBit.image" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.image "global" .Values.global) }}
{{- end -}}

{{/*
Return the proper cassandra external image name
*/}}
{{- define "fluentBit.cqlshImage" -}}
{{ include "common.images.image" (dict "imageRoot" .Values.cqlshImage "global" .Values.global) }}
{{- end -}}


{{/*
Create the name of the deployment
*/}}
{{- define "fluentBit.fullname" -}}
    {{ printf "%s" (include "common.names.fullname" .) }}
{{- end -}}


{{/*
Create the name of the service account to use for the query
*/}}
{{- define "fluentBit.serviceAccountName" -}}
{{- if .Values.serviceAccount.create -}}
    {{ default (include "fluentBit.fullname" .) .Values.serviceAccount.name }}
{{- else -}}
    {{ default "default" .Values.serviceAccount.name }}
{{- end -}}
{{- end -}}

{{/*
Return the proper Docker Image Registry Secret Names
*/}}
{{- define "fluentBit.imagePullSecrets" -}}
{{- include "common.images.pullSecrets" (dict "images" (list .Values.image) "global" .Values.global) -}}
{{- end -}}
