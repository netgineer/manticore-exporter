package main

import "testing"

func TestFindClusterSize_ExactKey(t *testing.T) {
	vars := map[string]string{
		"cluster_name":            "geektimes_tll",
		"cluster_geektimes_tll_size": "3",
		"cluster_other_size":      "9",
	}

	v, ok := findClusterSize(vars, "geektimes_tll")
	if !ok {
		t.Fatalf("expected size to be found")
	}
	if v != "3" {
		t.Fatalf("expected size 3, got %q", v)
	}
}

func TestFindClusterSize_Fallback(t *testing.T) {
	vars := map[string]string{
		"cluster_name":         "geektimes_tll",
		"cluster_other_size":   "9",
	}

	v, ok := findClusterSize(vars, "geektimes_tll")
	if !ok {
		t.Fatalf("expected fallback size to be found")
	}
	if v != "9" {
		t.Fatalf("expected size 9, got %q", v)
	}
}

func TestFindClusterSize_None(t *testing.T) {
	vars := map[string]string{
		"cluster_name": "geektimes_tll",
	}

	_, ok := findClusterSize(vars, "geektimes_tll")
	if ok {
		t.Fatalf("expected size to be missing")
	}
}
