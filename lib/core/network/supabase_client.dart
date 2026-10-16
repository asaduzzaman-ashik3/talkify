// lib/core/network/supabase_client.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseConfig {
  // Grab these from your Supabase Dashboard -> Project Settings -> API
  static const String url = 'https://<YOUR-PROJECT-ID>.supabase.co';
  static const String anonKey = '<YOUR-SUPABASE-ANON-KEY>';
}

// Global direct getter (useful outside widgets or in simple services)
final supabase = Supabase.instance.client;

// Riverpod provider for clean dependency injection and testing
final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  return Supabase.instance.client;
});