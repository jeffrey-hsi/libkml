// Copyright 2009, Google Inc. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//  1. Redistributions of source code must retain the above copyright notice,
//     this list of conditions and the following disclaimer.
//  2. Redistributions in binary form must reproduce the above copyright notice,
//     this list of conditions and the following disclaimer in the documentation
//     and/or other materials provided with the distribution.
//  3. Neither the name of Google Inc. nor the names of its contributors may be
//     used to endorse or promote products derived from this software without
//     specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED
// WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
// EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
// OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
// WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
// OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
// ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

// This file contains the unit tests for the Version class.

#include "kml/base/version.h"

#include "gtest/gtest.h"
#include "kml/base/string_util.h"

namespace kmlbase {

TEST(VersionTest, TestVersion) {
  ASSERT_EQ(LIBKML_MAJOR_VERSION, Version::get_major());
  ASSERT_EQ(LIBKML_MINOR_VERSION, Version::get_minor());
  ASSERT_EQ(LIBKML_MICRO_VERSION, Version::get_micro());
  ASSERT_TRUE(Version::IsCompat(LIBKML_MAJOR_VERSION, LIBKML_MINOR_VERSION,
                                LIBKML_MICRO_VERSION));
  ASSERT_TRUE(Version::IsCompat(LIBKML_MAJOR_VERSION, LIBKML_MINOR_VERSION,
                                LIBKML_MICRO_VERSION+1));
  ASSERT_TRUE(Version::IsCompat(LIBKML_MAJOR_VERSION, LIBKML_MINOR_VERSION+1,
                                LIBKML_MICRO_VERSION+1));
  ASSERT_TRUE(Version::IsCompat(LIBKML_MAJOR_VERSION, LIBKML_MINOR_VERSION+2,
                                LIBKML_MICRO_VERSION+2));
  ASSERT_FALSE(Version::IsCompat(LIBKML_MAJOR_VERSION+1, LIBKML_MINOR_VERSION,
                                LIBKML_MICRO_VERSION));
  const std::string kVersion(ToString(LIBKML_MAJOR_VERSION) + "." +
                             ToString(LIBKML_MINOR_VERSION) + "." +
                             ToString(LIBKML_MICRO_VERSION));
  ASSERT_EQ(kVersion, Version::GetString());
}

}  // end namespace kmlbase

int main(int argc, char** argv) {
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}

