{{/*
 Helm Chart Helper Template
*/}}

{{- define "postgreschart.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{- define "postgreschart.image" -}}
{{- printf "%s:%s" .Values.postgres.image.repository .Values.postgres.image.tag }}
{{- end }}

{{- define "postgreschart.secretName" -}}
{{- printf "%s-postgres" .Release.Name }}
{{- end }}
